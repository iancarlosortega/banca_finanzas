import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:banca_finanzas/src/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../main.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('notes');
action(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 20.0),
    child: GestureDetector(
      onTap: () {
        FirebaseFirestore.instance
            .collection("antecedentesEmpresa")
            .where('AE01', isEqualTo: aeNombre)
            .get().then((value){
          value.docs.forEach((element) {
            FirebaseFirestore.instance.collection("eventDetails").doc(element.id).delete().then((value){
              print("Success!");
              Navigator.pushNamed(context, 'home');
            });
          });
        });
      },
      child: Icon(
        Icons.delete,
        size: 26.0,
      ),
    )
);
}
read(){
  CollectionReference notesItemCollection = FirebaseFirestore.instance.collection('antecedentesEmpresa');
  Future<void> getData() async {
    // Get docs from collection reference
    QuerySnapshot querySnapshot = await notesItemCollection.get();

    // Get data from docs and convert map to List
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();


    print(allData);
  }
}
class AntecedentesEmpresaScreen extends StatelessWidget {
  const AntecedentesEmpresaScreen({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {

    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    Firebase.initializeApp();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff565D82),
        title: Text('Antecedentes de la Empresa'),
        actions: <Widget>[
          if(bandera == false) action(context)
        ],
      ),
      body: SingleChildScrollView( 
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          _DatosGenerales(),
          _AntiguedadEmpresa(),
          _EstatusLegal(),
          _EstatusFiscal(),
          _TamanioEmpresa(),
          _CoberturaMercado(),
          _VisionEmpresa(),
          _ComentarioAntecedentes(),
          _Botones(),

        ])
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: !keyboardIsOpen,
        child: FloatingActionButton(
          backgroundColor: Color(0xff565D82),
          onPressed: (){},
          child: Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );  
  }
}
  
class _DatosGenerales extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Datos Generales'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
              initialValue: aeNombre,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            onChanged: (value) {
              aeNombre = value;
            },
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Nombre',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: aeDireccion,
            onChanged: (value) {
              aeDireccion = value;
              },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),

            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Dirección',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: aeTelefono,
            onChanged: (value) {
              aeTelefono = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Teléfono y fax o mail',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: aeRfc,
            onChanged: (value) {
              aeRfc = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'R.F.C',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: aeDominio,
            onChanged: (value) {
              aeDominio = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Dominio Fiscal',
            ),
          )
        ],
      ),
    );
  }
}

class _AntiguedadEmpresa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Antigüedad de la empresa'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: aeAnos,
            onChanged: (value) {
              aeAnos = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Años',
            ),
          )
        ],
      ),
    );
  }
}

class _EstatusLegal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Estatus legal'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: aePersonaF,
            onChanged: (value) {
              aePersonaF = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Persona física',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: aePersonaM,
            onChanged: (value) {
              aePersonaM = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Persona moral',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: aeRegistrada,
            onChanged: (value) {
              aeRegistrada = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'No registrada',
            ),
          )
        ],
      ),
    );
  }
}

class _EstatusFiscal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Estatus fiscal'),

          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: aeEstatusFiscal,
            cursorColor: Color(0xffA4A4A4),
            onChanged: (value) {
              aeEstatusFiscal = value;
            },
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: '',
            ),
          )
        ],
      ),
    );
  }
}

class _TamanioEmpresa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric( horizontal: 15.0 ),
            child: Titulo(
              titulo: 'Tamaño de la empresa'
            )
          ),
          SizedBox( height: 10 ),
          Subtitulo(subtitulo: 'NÚMERO DE EMPLEADOS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  initialValue: aeOperativos,
                  onChanged: (value) {
                    aeOperativos = value;
                  },
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Operativos',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  initialValue: aeAdministrativos,
                  onChanged: (value) {
                    aeAdministrativos = value;
                  },
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Administrativos',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  initialValue: aeOtros,
                  onChanged: (value) {
                    aeOtros = value;
                  },
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Otros',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  initialValue: aeTotal,
                  onChanged: (value) {
                    aeTotal = value;
                  },
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Total',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  initialValue: aeComentarios,
                  onChanged: (value) {
                    aeComentarios = value;
                  },
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Comentarios',
                  ),
                )
              ],
            ),
          ),
          Subtitulo(subtitulo: 'VENTAS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  initialValue: aeDiarias,
                  onChanged: (value) {
                    aeDiarias = value;
                  },
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Diarias',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  initialValue: aeSemanales,
                  onChanged: (value) {
                    aeSemanales = value;
                  },
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Semanales',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  initialValue: aeMensuales,
                  onChanged: (value) {
                    aeMensuales = value;
                  },
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Mensuales',
                  ),
                )
              ],
            ),
          ),
          Subtitulo(subtitulo: 'VALOR DE LOS ACTIVOS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  initialValue: aeTerreno,
                  onChanged: (value) {
                    aeTerreno = value;
                  },
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Terreno',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  initialValue: aeRegional1,
                  onChanged: (value) {
                    aeRegional1 = value;
                  },
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'aeRegional1',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  initialValue: aeInternacional1,
                  onChanged: (value) {
                    aeInternacional1 = value;
                  },
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'aeInternacional1',
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CoberturaMercado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Cobertura del mercado'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: aeLocal,
            onChanged: (value) {
              aeLocal = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'aeLocal',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: aeRegional,
            onChanged: (value) {
              aeRegional = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'aeRegional',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: aeInternacional,
            onChanged: (value) {
              aeInternacional = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'aeInternacional',
            ),
          )
        ],
      ),
    );
  }
}

class _VisionEmpresa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Visión de la empresa'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: aeCorto,
            onChanged: (value) {
              aeCorto = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Corto plazo',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: aeLargo,
            onChanged: (value) {
              aeLargo = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Largo plazo',
            ),
          )
        ],
      ),
    );
  }
}

class _ComentarioAntecedentes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Comentario ejecutivo'),
          SizedBox( height: 10.0 ),
          TextFormField(
            maxLines: null,
            keyboardType: TextInputType.multiline,
            initialValue: aeComentarios2,
            onChanged: (value) {
              aeComentarios2 = value;
            },
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Comentarios',
            ),
          ),
          SizedBox( height: 50.0 ),
        ],
      ),
    );
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
              Navigator.pushNamed(context, 'home');
            },  
            icon: Icon(Icons.arrow_back)
          ),
        ),
        CircleAvatar(
          backgroundColor: Color(0xff4D5BA6),
          child: IconButton(
            onPressed: () async {
              /*print("nombre");
              print(nombre);
              datosusuario=nombre;*/
              Navigator.pushNamed(context, 'antecedentes_generales');
              /*DocumentReference documentReferencer =
              //_mainCollection.doc(userUid).collection('items').doc();
                  FirebaseFirestore.instance.collection('antecedentesEmpresa').doc();
              Map<String, dynamic> data = <String, dynamic>{
              "nombre": nombre,
              "direccion": direccion,
              };

              await documentReferencer
                  .set(data)
                  .whenComplete(() => print("Notes item added to the database"))
                  .catchError((e) => print(e));*/
              }
            ,
            icon: Icon(Icons.arrow_forward)
          ),
        ),
      ],
    );
  }
}