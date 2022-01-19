import 'package:banca_finanzas/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AntecedentesGeneralesScreen extends StatelessWidget {
  const AntecedentesGeneralesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff565D82),
        title: Text('Antecedentes Generales'),
      ),
      body: SingleChildScrollView( 
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          _DatosGenerales(),
          _AntecedentesEmpresario(),
          _AntecedentesPareja(),
          _Matrimonio(),
          _FilosofiaCaracter(),
          _MetasPersonales(),
          _AdministracionTiempo(),
          _ComentarioEjecutivo(),
          _Botones(),

        ])
      )
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
          Titulo(titulo: 'Datos Generales del empresario'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Nombres y Apellidos',
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
              hintText: 'Dirección',
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
              hintText: 'Teléfono',
            ),
          )
        ],
      ),
    );
  }
}

class _AntecedentesEmpresario extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric( horizontal: 15.0 ),
            child: Titulo(
              titulo: 'Antecedentes del empresario'
            )
          ),
          SizedBox( height: 10 ),
          Subtitulo(subtitulo: 'EL EMPRESARIO'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Ciudad de origen',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Lugar',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Edad',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Estado civil',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Ocupación',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Escolaridad',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Estado de salud',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Comentarios del empresario...',
                  ),
                )
              ],
            ),
          ),
          Subtitulo(subtitulo: 'LOS PADRES'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Nombres de los padres',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Ciudad de origen',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Viven',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Lugar',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Edad',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Ocupación',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Escolaridad',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Estado de salud',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Comentarios de los padres...',
                  ),
                )
              ],
            ),
          ),
          Subtitulo(subtitulo: 'NÚMERO DE HERMANOS NACIDOS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Nombres',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Edades',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Ocupaciones',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Lugar dentro de sus hermanos',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class _AntecedentesPareja extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric( horizontal: 15.0 ),
            child: Titulo(
              titulo: 'Antecedentes de la pareja'
            )
          ),
          SizedBox( height: 10 ),
          Subtitulo(subtitulo: 'LA PAREJA'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Nombre',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Ciudad de origen',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Vive',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Lugar',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Edad',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Ocupación',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Escolaridad',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Estado de salud',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Comentario...',
                  ),
                )
              ],
            ),
          ),
          Subtitulo(subtitulo: 'LOS SUEGROS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Nombres',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Originarios',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Viven',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Lugar',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Edad',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Ocupación',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Escolaridad',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Estado de salud',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Comentarios de los suegros...',
                  ),
                )
              ],
            ),
          ),
          Subtitulo(subtitulo: 'NÚMERO DE CUÑADOS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Nombres',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Edades',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Ocupaciones',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Lugar dentro de sus hermanos',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Matrimonio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric( horizontal: 15.0 ),
            child: Titulo(
              titulo: 'El Matrimonio'
            )
          ),
          SizedBox( height: 10 ),
          Subtitulo(subtitulo: 'AÑOS DE CASADOS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: '',
                  ),
                ),
              ],
            ),
          ),
          Subtitulo(subtitulo: 'SITUACIÓN AFECTIVA'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: '',
                  ),
                ),
              ],
            ),
          ),
          Subtitulo(subtitulo: 'HIJOS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Número de hijos',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Edades',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Ocupaciones',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Estado civil',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Escolaridad',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Estado de salud',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FilosofiaCaracter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Filosofía y/o Carácter'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Hobbies, color, personas',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            maxLines: null,
            keyboardType: TextInputType.multiline,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Comentarios',
            ),
          ),
        ],
      ),
    );
  }
}

class _MetasPersonales extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Metas Personales'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Profesionales',
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
              hintText: 'Afectivas',
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
              hintText: 'Físicas',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            maxLines: null,
            keyboardType: TextInputType.multiline,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Comentarios',
            ),
          ),
        ],
      ),
    );
  }
}

class _AdministracionTiempo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Administración del tiempo'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Día',
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
              hintText: 'Semana',
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
              hintText: 'Mes',
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
              hintText: 'Año',
            ),
          ),
          SizedBox( height: 10.0 ),
          TextFormField(
            maxLines: null,
            keyboardType: TextInputType.multiline,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Comentarios',
            ),
          ),
        ],
      ),
    );
  }
}

class _ComentarioEjecutivo extends StatelessWidget {

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
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: '',
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
              Navigator.pushNamed(context, 'antecedentes_empresa');
            },  
            icon: Icon(Icons.arrow_back)
          ),
        ),
        CircleAvatar(
          backgroundColor: Color(0xff4D5BA6),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'familia_empresa');
            },  
            icon: Icon(Icons.arrow_forward)
          ),
        ),
      ],
    );
  }
}