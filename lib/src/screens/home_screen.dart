import 'package:banca_finanzas/src/widgets/bottom_navigation_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
final FirebaseFirestore _firestore = FirebaseFirestore.instance;
 var allData;


CollectionReference notesItemCollection = FirebaseFirestore.instance.collection('antecedentesEmpresa');
Future<List<dynamic>> getData() async {
  // Get docs from collection reference
  QuerySnapshot querySnapshot = await notesItemCollection.get();

  // Get data from docs and convert map to List
  allData = querySnapshot.docs.map((doc) => doc.data()).toList();


  var x;
    for(x in allData){
      print("data");
      print("id");
     // print(x.id);
    }
    //print("data");
    //print(allData);
  return allData;
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  getData();

    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      backgroundColor: Color(0xff565D82),
      body:
        SafeArea(
          child: SingleChildScrollView(child:
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*0.07,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                            "GODARES",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.5,
                              fontSize: 20,
                              )
                            ),
                            SizedBox(height: 25),
                            CircleAvatar(
                              minRadius: 50,
                              backgroundColor: Color(0xffC4C4C4),
                              backgroundImage: NetworkImage('https://www.isesinstituto.com/sites/default/files/istock-1158245282.jpg'),
                            ),
                            SizedBox(height: 25),
                            Text(
                            "¡Bienvenido Ian!",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.5,
                              fontSize: 20,
                              )
                            ),
        
                          ],
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
        
                              IconButton(
                                icon: Icon(
                                    Icons.logout,
                                    color: Colors.white,
                                    size: 35,
        
                                ), onPressed: () {
                                  Navigator.pushNamed(context, 'login');
                                  },
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height*0.2,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                SingleChildScrollView(
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(50.0),
                        topRight: const Radius.circular(50.0),
                        ),
                      color: Color(0xffF0F0F0),
                    ),
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        const Text(
                          "Listado de empresas encuestadas",
                          style: TextStyle(
                            color: Color(0xff565D82),
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 20,
                          )
                        ),
                        Padding(padding: EdgeInsets.all(16.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                            children:[//for ( var i in allData ) card(i["AE01"],i["AE02"],i["AE03"])]
                              SingleChildScrollView( child:
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
        
                                      return Column(mainAxisAlignment: MainAxisAlignment.start,
                                      children:[for ( var i in allData ) card(i["AE01"],i["date"],i["media"].toString(), i,context)]);
                                    } else {
                                      return const Text('Empty data');
                                    }
                                  } else {
                                    return Text('State: ${snapshot.connectionState}');
                                  }
                                },
                              )
                              )
                            ]
                        )
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Visibility(
          visible: !keyboardIsOpen,
          child: FloatingActionButton(
            backgroundColor: Color(0xff565D82),
            onPressed: (){
              reiniciar();
              Navigator.pushNamed(context, 'antecedentes_empresa');
            },
            child: Icon(Icons.add),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
reiniciar(){
  aeNombre=          "";
  aeDireccion=       "";
  aeTelefono =       "";
  aeRfc=             "";
  aeDominio=         "";
  aeAnos=            "";
  aePersonaF=        "";
  aePersonaM=        "";
  aeRegistrada=      "";
  aeEstatusFiscal=    "";
  aeOperativos=       "";
  aeAdministrativos=  "";
  aeOtros=            "";
  aeTotal=            "";
  aeComentarios=      "";
  aeDiarias=          "";
  aeSemanales=        "";
  aeMensuales=        "";
  aeTerreno=          "";
  aeRegional1=        "";
  aeInternacional1=   "";
  aeLocal=            "";
  aeRegional=         "";
  aeInternacional=    "";
  aeCorto=            "";
  aeLargo=            "";
  aeComentarios2=     "";
  agNombre=          "";
  agDireccion=       "";
  agTelefono=        "";
  agCiudad=          "";
  agLugar=           "";
  agEdad=            "";
  agEstado=          "";
  agOcupacion=       "";
  agEscolaridad=     "";
  agEstadoSalud=      "";
  agComentarios=      "";
  agNombresP=         "";
  agpOrigen=          "";
  agpViven=           "";
  agpLugar=           "";
  agpEdad=            "";
  agpOcupacion=       "";
  agpEscolaridad=     "";
  agpEstado=          "";
  agpComentarios=     "";
  agNombres=          "";
  agEdades=           "";
  agOcupaciones=      "";
  agLugar2=           "";
  agNombre3=          "";
  agOrigen=           "";
  agVive=             "";
  agLugar3=           "";
  agEdad2=            "";
  agOcupacion2=       "";
  agEscolaridad2=     "";
  agEstado2=          "";
  agComentarios2=     "";
  agNombres3=         "";
  agOriginarios=      "";
  agViven=            "";
  agLugar4=           "";
  agEdad3=            "";
  agOcupacion3=       "";
  agEscolaridad3=     "";
  agEstado3 =         "";
  agComentarios3=     "";
  agNombres4=         "";
  agEdades2=          "";
  agOcupaciones2=     "";
  agLugar5=           "";
  agcasados=          "";
  agSituacion=        "";
  agnhijos=           "";
  aghedad=            "";
  agheocu=            "";
  aghesta=            "";
  aghesc=             "";
  aghsal=             "";
  agHobbies=          "";
  agComentarios4=     "";
  agProfesionales =   "";
  agAfectivas=        "";
  agFisicas=          "";
  agComentarios5=     "";
  agDia=              "";
  agSemana=           "";
  agMes=              "";
  agAno=              "";
  agComentarios6=     "";
  agejecutivo=        "";
  bandera = true;
  materiales1 = 0.0;
  materiales2 = 0.0;
  materiales3 = 0.0;
  materiales4 = 0.0;
  materiales5 = 0.0;
  materiales6 = 0.0;
  materiales7 = 0.0;
  materiales8 = 0.0;
  ubicacion1 = 0.0;
  ubicacion2 = 0.0;
  ubicacion3 = 0.0;
  ubicacion4 = 0.0;
  ubicacion5 = 0.0;
  lugar1 = 0.0;
  lugar2 = 0.0;
  lugar3 = 0.0;
  lugar4 = 0.0;
  lugar5 = 0.0;
  lugar6 = 0.0;
  lugar7 = 0.0;
  lugar8 = 0.0;
  lugar9 = 0.0;
  lugar10 = 0.0;
  lugar11 = 0.0;
  lugar12 = 0.0;
  lugar13 = 0.0;
  lugar14 = 0.0;
  procedimiento1 = 0.0;
  procedimiento2 = 0.0;
  procedimiento3 = 0.0;
  procedimiento4 = 0.0;
  procedimiento5 = 0.0;
  procedimiento6 = 0.0;
  procedimiento7 = 0.0;
  procedimiento8 = 0.0;
  procedimiento9 = 0.0;
  procedimiento10 = 0.0;
  procedimiento11 = 0.0;
  procedimiento12 = 0.0;
  maquinaria1 = 0.0;
  maquinaria2 = 0.0;
  maquinaria3 = 0.0;
  calidad1 = 0.0;
  calidad2 = 0.0;
  calidad3 = 0.0;
  reportes1 = 0.0;
  reportes2 = 0.0;
  reportes3 = 0.0;
  reportes4 = 0.0;
  reportes5 = 0.0;
   totalsp = 0.0;
   totalspe = 0.0;
   totalsm = 0.0;
   totalsl = 0.0;
   totalsf = 0.0;
  spComentarios ="";
}
card(String nombre,String fecha,String resultado, Map lista ,BuildContext context){


  return Card(
    borderOnForeground: true,
    child: new InkWell(
      onTap: () {
        aeNombre=           lista["AE01"];
        aeDireccion=        lista["AE02"];
        aeTelefono =        lista["AE03"];
        aeRfc=              lista["AE04"];
        aeDominio=          lista["AE05"];
        aeAnos=             lista["AE06"];
        aePersonaF=         lista["AE07"];
        aePersonaM=         lista["AE08"];
        aeRegistrada=       lista["AE09"];
        aeEstatusFiscal=    lista["AE010"];
        aeOperativos=       lista["AE011"];
        aeAdministrativos=  lista["AE012"];
        aeOtros=            lista["AE013"];
        aeTotal=            lista["AE014"];
        aeComentarios=      lista["AE015"];
        aeDiarias=          lista["AE016"];
        aeSemanales=        lista["AE017"];
        aeMensuales=        lista["AE018"];
        aeTerreno=          lista["AE019"];
        aeRegional1=        lista["AE020"];
        aeInternacional1=   lista["AE021"];
        aeLocal=            lista["AE022"];
        aeRegional=         lista["AE023"];
        aeInternacional=    lista["AE024"];
        aeCorto=            lista["AE025"];
        aeLargo=            lista["AE026"];
        aeComentarios2=     lista["AE027"];
        agNombre=           lista["AG01"];
        agDireccion=        lista["AG02"];
        agTelefono=         lista["AG03"];
        agCiudad=           lista["AG04"];
        agLugar=            lista["AG05"];
        agEdad=             lista["AG06"];
        agEstado=           lista["AG07"];
        agOcupacion=        lista["AG08"];
        agEscolaridad=      lista["AG09"];
        agEstadoSalud=      lista["AG010"];
        agComentarios=      lista["AG011"];
        agNombresP=         lista["AG012"];
        agpOrigen=          lista["AG013"];
        agpViven=           lista["AG014"];
        agpLugar=           lista["AG015"];
        agpEdad=            lista["AG016"];
        agpOcupacion=       lista["AG017"];
        agpEscolaridad=     lista["AG018"];
        agpEstado=          lista["AG019"];
        agpComentarios=     lista["AG020"];
        agNombres=          lista["AG021"];
        agEdades=           lista["AG022"];
        agOcupaciones=      lista["AG023"];
        agLugar2=           lista["AG024"];
        agNombre3=          lista["AG025"];
        agOrigen=           lista["AG026"];
        agVive=             lista["AG027"];
        agLugar3=           lista["AG028"];
        agEdad2=            lista["AG029"];
        agOcupacion2=       lista["AG030"];
        agEscolaridad2=     lista["AG031"];
        agEstado2=          lista["AG032"];
        agComentarios2=     lista["AG033"];
        agNombres3=         lista["AG034"];
        agOriginarios=      lista["AG035"];
        agViven=            lista["AG036"];
        agLugar4=           lista["AG037"];
        agEdad3=            lista["AG038"];
        agOcupacion3=       lista["AG039"];
        agEscolaridad3=     lista["AG040"];
        agEstado3 =         lista["AG041"];
        agComentarios3=     lista["AG042"];
        agNombres4=         lista["AG043"];
        agEdades2=          lista["AG044"];
        agOcupaciones2=     lista["AG045"];
        agLugar5=           lista["AG046"];
        agcasados=          lista["AG047"];
        agSituacion=        lista["AG048"];
        agnhijos=           lista["AG049"];
        aghedad=            lista["AG050"];
        agheocu=            lista["AG051"];
        aghesta=            lista["AG052"];
        aghesc=             lista["AG053"];
        aghsal=             lista["AG054"];
        agHobbies=          lista["AG055"];
        agComentarios4=     lista["AG056"];
        agProfesionales =   lista["AG057"];
        agAfectivas=        lista["AG058"];
        agFisicas=          lista["AG059"];
        agComentarios5=     lista["AG060"];
        agDia=              lista["AG061"];
        agSemana=           lista["AG062"];
        agMes=              lista["AG063"];
        agAno=              lista["AG064"];
        agComentarios6=     lista["AG065"];
        agejecutivo=        lista["AG066"];
        spComentarios       = lista["spComentarios"];
        materiales1         = lista["spmateriales1"];
        materiales2         = lista["spmateriales2"];
        materiales3         = lista["spmateriales3"];
        materiales4         = lista["spmateriales4"];
        materiales5         = lista["spmateriales5"];
        materiales6         = lista["spmateriales6"];
        materiales7         = lista["spmateriales7"];
        materiales8         = lista["spmateriales8"];
        ubicacion1          = lista["spubicacion1"];
        ubicacion2          = lista["spubicacion2"];
        ubicacion3          = lista["spubicacion3"];
        ubicacion4          = lista["spubicacion4"];
        ubicacion5          = lista["spubicacion5"];
        lugar1              = lista["splugar1"];
        lugar2              = lista["splugar2"];
        lugar3              = lista["splugar3"];
        lugar4              = lista["splugar4"];
        lugar5              = lista["splugar5"];
        lugar6              = lista["splugar6"];
        lugar7              = lista["splugar7"];
        lugar8              = lista["splugar8"];
        lugar9              = lista["splugar9"];
        lugar10             = lista["splugar10"];
        lugar11             = lista["splugar11"];
        lugar12             = lista["splugar12"];
        lugar13             = lista["splugar13"];
        lugar14             = lista["splugar14"];
        procedimiento1      = lista["spprocedimien1"];
        procedimiento2      = lista["spprocedimiento2"];
        procedimiento3      = lista["spprocedimiento3"];
        procedimiento4      = lista["spprocedimiento4"];
        procedimiento5      = lista["spprocedimiento5"];
        procedimiento6      = lista["spprocedimiento6"];
        procedimiento7      = lista["spprocedimiento7"];
        procedimiento8      = lista["spprocedimiento8"];
        procedimiento9      = lista["spprocedimiento9"];
        procedimiento10     = lista["spprocedimiento10"];
        procedimiento11     = lista["spprocedimiento11"];
        procedimiento12     = lista["spprocedimiento12"];
        maquinaria1         = lista["spmaquinaria1"];
        maquinaria2         = lista["spmaquinaria2"];
        maquinaria3         = lista["spmaquinaria3"];
        calidad1            = lista["spcalidad1"];
        calidad2            = lista["spcalidad2"];
        calidad3            = lista["spcalidad3"];
        reportes1           = lista["spreportes1"];
        reportes2           = lista["spreportes2"];
        reportes3           = lista["spreportes3"];
        reportes4           = lista["spreportes4"];
        reportes5           = lista["spreportes5"];
        totalsp = lista["totalsp"].toDouble();
        totalspe = lista["totalspe"].toDouble();
        totalsm = lista["totalsm"].toDouble();
        totalsl = lista["totalsl"].toDouble();
        totalsf = lista["totalsf"].toDouble();
        bandera = false;
        Navigator.pushNamed(context, 'antecedentes_empresa');
      },
      child:
      Padding(
        padding: EdgeInsets.all(10.0),
        child:Row(

          children: <Widget>[
            Expanded(
              flex: 5,
              child: Text(nombre+"\n"+fecha),
            ),
            Expanded(
                flex: 3,
                child: Text("media\n"+resultado.toString()+"%")
            ),
            Expanded(
              flex: 2,
              child: Icon(Icons.arrow_right),
            ),
          ],
        ),)

    ),
  );
}