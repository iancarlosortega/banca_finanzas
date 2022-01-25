import 'package:banca_finanzas/main.dart';
import 'package:banca_finanzas/src/widgets/bottom_navigation_bar.dart';
import 'package:banca_finanzas/src/widgets/input_decoration.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
final FirebaseFirestore _firestore = FirebaseFirestore.instance;
var allData;
var dd;
var aux;
CollectionReference notesItemCollection = FirebaseFirestore.instance.collection('familia');
Future<List<dynamic>> getData() async {
  // Get docs from collection reference
  QuerySnapshot querySnapshot = await notesItemCollection.get();

  // Get data from docs and convert map to List
  allData = querySnapshot.docs.map((doc) => doc.data()).toList();
  /*var x;
    for(x in allData){
      print("data");
      print(x);
    }
    print("data");
    print(allData);*/
  return allData;
}
class FamiliaEmpresaSreen extends StatelessWidget {
   FamiliaEmpresaSreen({Key? key}) : super(key: key);

  @override

   Widget build(BuildContext context) {
    getData();

    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff565D82),
        title: Text('Familia en la empresa'),
      ),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(15),
                child:boton(context) ,
                ),
                search(context),
                Padding(
                    padding: EdgeInsets.all(16.0),
                    child:ListView(
                        shrinkWrap: true, // use this
                        children:<Widget>[
                          FutureBuilder<List>(
                            future: getData(),
                            builder: (
                                BuildContext context,
                                AsyncSnapshot<List> snapshot,

                                ) {
                              print(snapshot.connectionState);
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return CircularProgressIndicator();
                              } else if (snapshot.connectionState == ConnectionState.done) {
                                if (snapshot.hasError) {
                                  return const Text('Error');
                                } else if (snapshot.hasData) {
                                  for(var i in allData){


                                      aux=Column(mainAxisAlignment: MainAxisAlignment.start,
                                          children:[for ( var i in allData ) if(i["bandera"]== aeNombre) card(i["NF04"],i["NF05"], i,context)]);
                                  }
                                  return aux;
                                } else {
                                  return const Text('Empty data');
                                }
                              } else {
                                return Text('State: ${snapshot.connectionState}');
                              }
                            },
                          )
                        ]
                    ),
                ),

                
              _Botones(),
              ])
      ),
      
    );
  }


   boton(BuildContext context) { return ElevatedButton(

    style: ButtonStyle(

      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(
            color: Color(0xff4D5BA6) ,
            width: 2.0,
          ),
        ),
      ),   padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(30)),
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff4D5BA6))
    ),
    child: Text('+ Agregar familiar ',style: TextStyle(fontSize: 24)),
    onPressed: () {reiniciar();
    Navigator.pushNamed(context,"nuevaFamilia");
        },
  );
   }


     search(BuildContext context){ return Container(
       width:MediaQuery.of(context).size.width * 0.95,
       padding: EdgeInsets.symmetric( horizontal: 20.0 ),
       child: TextFormField(
         cursorColor: Color(0xffA4A4A4),
         style: TextStyle(
             color: Colors.black
         ),
         decoration: InputDecorations.searchDecoration(
             hintText: 'Buscar',
             radioBorde: 20.0,
             suffixIcon: Icons.search,
         ),
       ),
     );}

     card(String nombre,String cargo,Map lista, BuildContext context){

       return Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
         child: new InkWell(
         onTap: () {
           nfTipo=lista["NF01"];
           nfFrecuencia=lista["NF02"];
           nfTipo2=lista["NF03"];
           nfNombre2 =lista["NF04"];
           print(nfNombre2);
           nfPuesto =lista["NF05"];
           nfRelacion=lista["NF06"];
         Navigator.pushNamed(context, 'nuevaFamilia');
         },
         child:
         ClipRRect (
         borderRadius: BorderRadius.circular(5.0),

         child: Container(
             decoration: BoxDecoration(
                 border: Border.all(
                     width: 0.5,
                     color: Colors.black
                 ),
               borderRadius: BorderRadius.circular(5.0),

             ),
             height: 60,
             width: MediaQuery.of(context).size.width * 0.90,
             margin:EdgeInsets.only(left: 20.0, right: 20.0),
             child: Align(
                 alignment: Alignment.centerLeft,
                 child: Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(children: [
       Text(cargo + ": ", style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Color(0xff565D82)),
       ),Text(nombre ,style: const TextStyle( fontSize: 17,color: Color(0xff565D82))),
       ])))),
       )));



  }
}

class _Botones extends StatelessWidget {
  const _Botones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          backgroundColor: Color(0xff4D5BA6),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'antecedentes_generales');
            },  
            icon: Icon(Icons.arrow_back)
          ),
        ),
        CircleAvatar(
          backgroundColor: Color(0xff4D5BA6),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'subsistema_mercado');
            },  
            icon: Icon(Icons.arrow_forward)
          ),
        ),
      ],
    );
  }
}
reiniciar(){
  nfTipo=         "";
  nfFrecuencia=   "";
  nfTipo2=        "";
  nfNombre2 =     "";
  nfPuesto =      "";
  nfRelacion=     "";
}