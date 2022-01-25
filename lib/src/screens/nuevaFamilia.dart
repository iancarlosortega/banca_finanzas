import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:banca_finanzas/src/widgets/widgets.dart';
import 'package:banca_finanzas/src/widgets/bottom_navigation_bar.dart';
import 'package:banca_finanzas/src/widgets/input_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

import '../../main.dart';
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class nuevaFamilia extends StatelessWidget {
  const nuevaFamilia({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    var datos = Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Datos Familiar'),
          SizedBox( height: 10.0 ),
          TextFormField(
            initialValue: nfNombre2,
            keyboardType: TextInputType.text,
            onChanged: (value) {
              nfNombre2 = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
                color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Nombre',

            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            initialValue: nfPuesto,
            keyboardType: TextInputType.text,
            onChanged: (value) {
              nfPuesto = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
                color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Puesto',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            initialValue: nfRelacion,
            keyboardType: TextInputType.text,
            onChanged: (value) {
              nfRelacion = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
                color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Relacion',
            ),
          ),

        ],
      ),
    );
    print("llega");
    print(nfNombre2);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff565D82),
          title: Text('Nuevo familiar en la empresa'),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                datos,
                tipo,
                frecuen,
                retribucion,
                Padding(
                padding: EdgeInsets.all(16.0),
                child:
                ElevatedButton(style: ButtonStyle(

                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: Color(0xff4D5BA6) ,
                          width: 2.0,
                        ),
                      ),
                    ),   padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xff4D5BA6))
                ),
                    onPressed: () async{
                      Navigator.pushNamed(context, 'familia_empresa');
                      DocumentReference documentReferencer =
                      //_mainCollection.doc(userUid).collection('items').doc();
                      FirebaseFirestore.instance.collection('familia').doc();
                      Map<String, dynamic> data = <String, dynamic>{

                        "bandera": aeNombre,
                        "NF01" : nfTipo ,
                        "NF02" : nfFrecuencia ,
                        "NF03" :nfTipo2 ,
                        "NF04": nfNombre2 ,
                        "NF05": nfPuesto ,
                        "NF06": nfRelacion,

                      };


                      await documentReferencer
                          .set(data)
                          .whenComplete(() => print("Notes item added to the database"))
                          .catchError((e) => print(e));
                      reiniciar();



                    },

                      child:  RichText(
                      text: TextSpan(
                        children: [

                          TextSpan(
                              text: "Registrar Familiar",style: const TextStyle( fontSize: 13,color: Colors.white)
                          ),WidgetSpan(
                            child: Icon(Icons.save, size: 14),
                          ),
                        ],

                      ),
                    )

                ))
        ]),
      ),
    );
  }

}
enum tipoApoyo { Moral, Operacional, Supervicion, Gerencia, Direccion}
enum frecuencia { Esporadica, FrecuenteCompromiso, Compromisoimplicito, Compromisoexplicito}
enum retribu { Afectiva, Economicasimbolica, Economicareal, Patrimonial}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  tipoApoyo? _character = tipoApoyo.Moral;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Moral'),
          leading: Radio<tipoApoyo>(
            value: tipoApoyo.Moral,
            groupValue: _character,
            onChanged: (tipoApoyo? value) {
              setState(() {
                _character = value;
                nfTipo = 'Moral';
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Operacional'),
          leading: Radio<tipoApoyo>(
            value: tipoApoyo.Operacional,
            groupValue: _character,
            onChanged: (tipoApoyo? value) {
              setState(() {
                _character = value;
                nfTipo = 'Operacional';
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Supervicion'),
          leading: Radio<tipoApoyo>(
            value: tipoApoyo.Supervicion,
            groupValue: _character,
            onChanged: (tipoApoyo? value) {
              setState(() {
                _character = value;
                nfTipo = 'Supervicion';

              });
            },
          ),
        ),
        ListTile(
          title: const Text('Gerencia'),
          leading: Radio<tipoApoyo>(
            value: tipoApoyo.Gerencia,
            groupValue: _character,
            onChanged: (tipoApoyo? value) {
              setState(() {
                _character = value;
                nfTipo = 'Gerencia';
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Direccion'),
          leading: Radio<tipoApoyo>(
            value: tipoApoyo.Direccion,
            groupValue: _character,
            onChanged: (tipoApoyo? value) {
              setState(() {
                _character = value;
                nfTipo = 'Direccion';
              });
            },
          ),
        )
      ],
    );
  }
}
class MyStatefulWidget2 extends StatefulWidget {
  const MyStatefulWidget2({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget2> createState() => _MyStatefulWidgetState2();
}
class _MyStatefulWidgetState2 extends State<MyStatefulWidget2> {
  frecuencia? _character2 = frecuencia.Compromisoexplicito;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Esporadica'),
          leading: Radio<frecuencia>(
            value: frecuencia.Esporadica,
            groupValue: _character2,
            onChanged: (frecuencia? value) {
              setState(() {
                _character2 = value;
                nfFrecuencia = 'Esporadica';
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Frecuente Compromiso'),
          leading: Radio<frecuencia>(
            value: frecuencia.FrecuenteCompromiso,
            groupValue: _character2,
            onChanged: (frecuencia? value) {
              setState(() {
                _character2 = value;
                nfFrecuencia = 'Frecuente Compromiso';
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Compromiso explicito'),
          leading: Radio<frecuencia>(
            value: frecuencia.Compromisoexplicito,
            groupValue: _character2,
            onChanged: (frecuencia? value) {
              setState(() {
                _character2 = value;
                nfFrecuencia = 'Compromiso explicito';
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Compromiso implicito'),
          leading: Radio<frecuencia>(
            value: frecuencia.Compromisoimplicito,
            groupValue: _character2,
            onChanged: (frecuencia? value) {
              setState(() {
                _character2 = value;
                nfFrecuencia = 'Compromiso implicito';
              });
            },
          ),
        ),

      ],
    );
  }
}
class MyStatefulWidget3 extends StatefulWidget {
  const MyStatefulWidget3({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget3> createState() => _MyStatefulWidgetState3();
}

class _MyStatefulWidgetState3 extends State<MyStatefulWidget3> {
  retribu? _character3 = retribu.Afectiva;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Afectiva'),
          leading: Radio<retribu>(
            value: retribu.Afectiva,
            groupValue: _character3,
            onChanged: (retribu? value) {
              setState(() {
                _character3 = value;
                nfTipo2 = 'Afectiva';
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Economica Real'),
          leading: Radio<retribu>(
            value: retribu.Economicareal,
            groupValue: _character3,
            onChanged: (retribu? value) {
              setState(() {
                _character3 = value;
                nfTipo2 = 'Economica Real';
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Economica Simbolica'),
          leading: Radio<retribu>(
            value: retribu.Economicasimbolica,
            groupValue: _character3,
            onChanged: (retribu? value) {
              setState(() {
                _character3 = value;
                nfTipo2 = 'Economica Simbolica';
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Patrimonial'),
          leading: Radio<retribu>(
            value: retribu.Patrimonial,
            groupValue: _character3,
            onChanged: (retribu? value) {
              setState(() {
                _character3 = value;
                nfTipo2 = 'Patrimonial';
              });
            },
          ),
        ),

      ],
    );
  }
}





var tipo = Container(
    padding: EdgeInsets.all(15.0),
    child: Column(
        children: [
          Titulo(titulo: 'Tipo de Apoyo'),
          SizedBox( height: 10.0 ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyStatefulWidget()
            ],
          )
        ]));
var frecuen = Container(
    padding: EdgeInsets.all(15.0),
    child: Column(
        children: [
          Titulo(titulo: 'Frecuencia de Apoyo'),
          SizedBox( height: 10.0 ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyStatefulWidget2()
            ],
          )
        ]));
var retribucion = Container(
    padding: EdgeInsets.all(15.0),
    child: Column(
        children: [
          Titulo(titulo: 'Tipo de Retribución'),
          SizedBox( height: 10.0 ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyStatefulWidget3()
            ],
          )
        ]));
reiniciar(){
  nfTipo=         "";
  nfFrecuencia=   "";
  nfTipo2=        "";
  nfNombre2 =     "";
  nfPuesto =      "";
  nfRelacion=     "";
}