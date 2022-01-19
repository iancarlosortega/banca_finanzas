import 'package:flutter/material.dart';
import 'package:banca_finanzas/src/widgets/widgets.dart';


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
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },  
            icon: Icon(Icons.check)
          ),
        ),
      ],
    );
  }
}