import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:banca_finanzas/src/widgets/widgets.dart';

import '../../main.dart';
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class PlanMejoraScreen extends StatelessWidget {
  const PlanMejoraScreen({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {

    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff565D82),
        title: Text('Plan de Mejora y Seguimiento'),
      ),
      body: SingleChildScrollView( 
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          _mercado(),
          _operacion(),
          _gente(),
          _legal(),
          _financiero(),
          _habilidades(),
          _directivo(),
          _Botones()

        ])
      ),
    );  
  }
}
  
class _mercado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Mercado'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Diagnóstico',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Visión',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Estrategia',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Acciones',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Responsable',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Indicadores',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Inversiones',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Vinculación',
            ),
          ),
        ],
      ),
    );
  }
}
class _operacion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Operación'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Diagnóstico',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Visión',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Estrategia',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Acciones',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Responsable',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Indicadores',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Inversiones',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Vinculación',
            ),
          ),
        ],
      ),
    );
  }
}
class _gente extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Gente'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Diagnóstico',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Visión',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Estrategia',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Acciones',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Responsable',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Indicadores',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Inversiones',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Vinculación',
            ),
          ),
        ],
      ),
    );
  }
}
class _legal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Legal'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Diagnóstico',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Visión',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Estrategia',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Acciones',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Responsable',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Indicadores',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Inversiones',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Vinculación',
            ),
          ),
        ],
      ),
    );
  }
}
class _financiero extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Financiero'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Diagnóstico',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Visión',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Estrategia',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Acciones',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Responsable',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Indicadores',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Inversiones',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Vinculación',
            ),
          ),
        ],
      ),
    );
  }
}
class _habilidades extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Habilidades'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Diagnóstico',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Visión',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Estrategia',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Acciones',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Responsable',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Indicadores',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Inversiones',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Vinculación',
            ),
          ),
        ],
      ),
    );
  }
}
class _directivo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Directivo'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Diagnóstico',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Visión',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Estrategia',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Acciones',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Responsable',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Indicadores',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Inversiones',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Vinculación',
            ),
          ),
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
              Navigator.pushNamed(context, 'subsistema_finanzas');
            },  
            icon: Icon(Icons.arrow_back)
          ),
        ),
        CircleAvatar(
          backgroundColor: Color(0xff4D5BA6),
          child: IconButton(
            onPressed: () async {
              var date = new DateTime.now().toString();
              var tot = ((totalsf +totalsl+totalsm+ totalspe+totalsp)/400)*100;
              print("calculos");

              print (tot);
              print (totalsf );
              print ( totalsl);
              print ( totalsm);
              print ( totalspe);
              print ( totalsp);
              print("fin calculos");
              Navigator.pushNamed(context, 'home');
              DocumentReference documentReferencer =
              //_mainCollection.doc(userUid).collection('items').doc();
                  FirebaseFirestore.instance.collection('antecedentesEmpresa').doc();
              Map<String, dynamic> data = <String, dynamic>{

              "AE01": aeNombre,
              "AE02": aeDireccion,
              "AE03": aeTelefono ,
              "AE04": aeRfc,
              "AE05": aeDominio,
              "AE06": aeAnos,
              "AE07": aePersonaF,
              "AE08": aePersonaM,
              "AE09": aeRegistrada,
              "AE010": aeEstatusFiscal,
              "AE011": aeOperativos,
              "AE012": aeAdministrativos,
              "AE013": aeOtros,
              "AE014": aeTotal,
              "AE015": aeComentarios,
              "AE016": aeDiarias,
              "AE017": aeSemanales,
              "AE018": aeMensuales,
              "AE019": aeTerreno,
              "AE020": aeRegional1,
              "AE021": aeInternacional1,
              "AE022": aeLocal,
              "AE023": aeRegional,
              "AE024": aeInternacional,
              "AE025": aeCorto,
              "AE026": aeLargo,
              "AE027": aeComentarios2,
              //ANTECEDENTES GENERALES
              "AG01": agNombre,
              "AG02": agDireccion,
              "AG03": agTelefono,
              "AG04": agCiudad,
              "AG05": agLugar,
              "AG06": agEdad,
              "AG07": agEstado,
              "AG08": agOcupacion,
              "AG09": agEscolaridad,
              "AG010": agEstadoSalud,
              "AG011": agComentarios,
              "AG012": agNombresP,
              "AG013": agpOrigen,
              "AG014": agpViven,
              "AG015": agpLugar,
              "AG016": agpEdad,
              "AG017": agpOcupacion,
              "AG018": agpEscolaridad,
              "AG019": agpEstado,
              "AG020": agpComentarios,
              "AG021": agNombres,
              "AG022": agEdades,
              "AG023": agOcupaciones,
              "AG024": agLugar2,
              "AG025": agNombre3,
              "AG026": agOrigen,
              "AG027": agVive,
              "AG028": agLugar3,
              "AG029": agEdad2,
              "AG030": agOcupacion2,
              "AG031": agEscolaridad2,
              "AG032": agEstado2,
              "AG033": agComentarios2,
              "AG034": agNombres3,
              "AG035": agOriginarios,
              "AG036": agViven,
              "AG037": agLugar4,
              "AG038": agEdad3,
              "AG039": agOcupacion3,
              "AG040": agEscolaridad3,
              "AG041":agEstado3 ,
              "AG042": agComentarios3,
              "AG043": agNombres4,
              "AG044": agEdades2,
              "AG045": agOcupaciones2,
              "AG046": agLugar5,
              "AG047": agcasados,
              "AG048": agSituacion,
              "AG049": agnhijos,
              "AG050": aghedad,
              "AG051": agheocu,
              "AG052": aghesta,
              "AG053": aghesc,
              "AG054": aghsal,
              "AG055": agHobbies,
              "AG056": agComentarios4,
              "AG057":agProfesionales ,
              "AG058": agAfectivas,
              "AG059": agFisicas,
              "AG060": agComentarios5,
              "AG061": agDia,
              "AG062": agSemana,
              "AG063": agMes,
              "AG064": agAno,
              "AG065": agComentarios6,
              "AG066": agejecutivo,
                "sptotal" :totalsp           ,
                "spComentarios"  :  spComentarios   ,
                "spmateriales1"  :  materiales1     ,
                "spmateriales2"  :  materiales2     ,
                "spmateriales3"  :  materiales3     ,
                "spmateriales4"  :  materiales4     ,
                "spmateriales5"  :  materiales5     ,
                "spmateriales6"  :  materiales6     ,
                "spmateriales7"  :  materiales7     ,
                "spmateriales8"  :  materiales8     ,
                "spubicacion1"  :  ubicacion1      ,
                "spubicacion2"  :  ubicacion2      ,
                "spubicacion3"  :  ubicacion3      ,
                "spubicacion4"  :  ubicacion4      ,
                "spubicacion5"  :  ubicacion5      ,
                "splugar1"  :  lugar1          ,
                "splugar2"  :  lugar2          ,
                "splugar3"  :  lugar3          ,
                "splugar4"  :  lugar4          ,
                "splugar5"  :  lugar5          ,
                "splugar6"  :  lugar6          ,
                "splugar7"  :  lugar7          ,
                "splugar8"  :  lugar8          ,
                "splugar9"  :  lugar9          ,
                "splugar10"  :  lugar10         ,
                "splugar11"  :  lugar11         ,
                "splugar12"  :  lugar12         ,
                "splugar13"  :  lugar13         ,
                "splugar14"  :  lugar14         ,
                "spprocedimien1"  :  procedimiento1  ,
                "spprocedimiento2"  :  procedimiento2  ,
                "spprocedimiento3"  :  procedimiento3  ,
                "spprocedimiento4"  :  procedimiento4  ,
                "spprocedimiento5"  :  procedimiento5  ,
                "spprocedimiento6"  :  procedimiento6  ,
                "spprocedimiento7"  :  procedimiento7  ,
                "spprocedimiento8"  :  procedimiento8  ,
                "spprocedimiento9"  :  procedimiento9  ,
                "spprocedimiento10"  :  procedimiento10 ,
                "spprocedimiento11"  :  procedimiento11 ,
                "spprocedimiento12"  :  procedimiento12 ,
                "spmaquinaria1"  :  maquinaria1     ,
                "spmaquinaria2"  :  maquinaria2     ,
                "spmaquinaria3"  :  maquinaria3     ,
                "spcalidad1"  :  calidad1        ,
                "spcalidad2"  :  calidad2        ,
                "spcalidad3"  :  calidad3        ,
                "spreportes1"  :  reportes1       ,
                "spreportes2"  :  reportes2       ,
                "spreportes3"  :  reportes3       ,
                "spreportes4"  :  reportes4       ,
                "spreportes5"  :  reportes5       ,
                "totalsp" :       totalsp ,
                "totalspe" : totalspe,
                "totalsm" : totalsm ,
                "totalsl" : totalsl ,
                "totalsf" : totalsf ,
                "date" : date ,
                "media" : ((totalsf +totalsl+totalsm+ totalspe+totalsp)/400)*100,
              };

              await documentReferencer
                  .set(data)
                  .whenComplete(() => print("Notes item added to the database"))
                  .catchError((e) => print(e));
            },  
            icon: Icon(Icons.check)
          ),
        ),
      ],
    );
  }
}