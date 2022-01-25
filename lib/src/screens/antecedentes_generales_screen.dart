import 'package:banca_finanzas/main.dart';
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
          Titulo(titulo: 'Datos Generales del empresario'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            initialValue: agNombre,

            onChanged: (value) {
                agNombre = value;
              },
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
            initialValue: agDireccion,

            onChanged: (value) {
              agDireccion = value;
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
            initialValue: agTelefono,

            cursorColor: Color(0xffA4A4A4),
            onChanged: (value) {
              agTelefono = value;
            },
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
                  initialValue: agCiudad,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agCiudad = value;
                  },
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
                  initialValue: agLugar,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agLugar = value;
                  },
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
                  initialValue: agEdad,

                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    agEdad = value;
                  },
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
                  initialValue: agEstado,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agEstado = value;
                  },
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
                  initialValue: agOcupacion,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agOcupacion = value;
                  },
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
                  initialValue: agEscolaridad,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agEscolaridad = value;
                  },
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
                  initialValue: agEstadoSalud,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agEstadoSalud = value;
                  },
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
                  initialValue: agComentarios,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  onChanged: (value) {
                    agComentarios = value;
                  },
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
                  initialValue: agNombresP,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agNombresP = value;
                  },
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
                  initialValue: agpOrigen,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agpOrigen = value;
                  },
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
                  initialValue: agpViven,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agpViven = value;
                  },
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
                  initialValue: agpLugar,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agpLugar = value;
                  },
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
                  initialValue: agpEdad,

                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    agpEdad = value;
                  },
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
                  initialValue: agpOcupacion,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agpOcupacion = value;
                  },
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
                  initialValue: agpEscolaridad,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agpEscolaridad = value;
                  },
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
                  initialValue: agpEstado,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agpEstado = value;
                  },
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
                  initialValue: agpComentarios,

                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  onChanged: (value) {
                    agpComentarios = value;
                  },
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
                  initialValue: agNombres,

                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  onChanged: (value) {
                    agNombres = value;
                  },
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Nombres',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  initialValue: agEdades,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agEdades = value;
                  },
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
                  initialValue: agOcupaciones,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agOcupaciones = value;
                  },
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
                  initialValue: agLugar2,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agLugar2 = value;
                  },
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
                  initialValue: agNombre3,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agNombre3 = value;
                  },
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
                  initialValue: agOrigen,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agOrigen = value;
                  },
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
                  initialValue: agVive,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agVive = value;
                  },
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
                  initialValue: agLugar3,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agLugar3 = value;
                  },
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
                  initialValue: agEdad2,

                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    agEdad2 = value;
                  },
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
                  initialValue: agOcupacion2,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agOcupacion2 = value;
                  },
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
                  initialValue: agEscolaridad2,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agEscolaridad2 = value;
                  },
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
                  initialValue: agEstado2,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agEstado2 = value;
                  },
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
                  initialValue: agComentarios2,

                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  onChanged: (value) {
                    agComentarios2 = value;
                  },
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
                  initialValue: agNombres3,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agNombres3 = value;
                  },
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
                  initialValue: agOriginarios,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agOriginarios = value;
                  },
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
                  initialValue: agViven,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agViven = value;
                  },
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
                  initialValue: agLugar4,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agLugar4 = value;
                  },
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
                  initialValue: agEdad3,

                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    agEdad3 = value;
                  },
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
                  initialValue: agOcupacion3,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agOcupacion3 = value;
                  },
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
                  initialValue: agEscolaridad3,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agEscolaridad3 = value;
                  },
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
                  initialValue: agEstado3,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agEstado3 = value;
                  },
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
                  initialValue: agComentarios3,

                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  onChanged: (value) {
                    agComentarios3 = value;
                  },
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
                  initialValue: agNombres4,

                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  onChanged: (value) {
                    agNombres4 = value;
                  },
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Nombres',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  initialValue: agEdades2,

                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xffA4A4A4),
                  onChanged: (value) {
                    agEdades2 = value;
                  },
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Edades',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  initialValue: agOcupaciones2,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agOcupaciones2 = value;
                  },
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
                  initialValue: agLugar5,

                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    agLugar5 = value;
                  },
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
                  initialValue: agcasados,

                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xffA4A4A4),
                  onChanged: (value) {
                    agcasados = value;
                  },
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
                  initialValue: agSituacion,

                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xffA4A4A4),
                  onChanged: (value) {
                    agSituacion = value;
                  },
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
                  initialValue: agnhijos,

                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xffA4A4A4),
                  onChanged: (value) {
                    agnhijos = value;
                  },
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Número de hijos',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  initialValue: aghedad,

                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xffA4A4A4),
                  onChanged: (value) {
                    aghedad = value;
                  },
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Edades',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  initialValue: agheocu,

                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  onChanged: (value) {
                    agheocu = value;
                  },
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Ocupaciones',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  initialValue: aghesta,

                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  onChanged: (value) {
                    aghesta = value;
                  },
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Estado civil',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  initialValue: aghesc,

                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  onChanged: (value) {
                    aghesc = value;
                  },
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Escolaridad',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  initialValue: aghsal,

                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  onChanged: (value) {
                    aghsal = value;
                  },
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
            initialValue: agHobbies,

            keyboardType: TextInputType.text,
            onChanged: (value) {
              agHobbies = value;
            },
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
            initialValue: agComentarios4,

            maxLines: null,
            onChanged: (value) {
              agComentarios4 = value;
            },
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
            initialValue: agProfesionales,

            keyboardType: TextInputType.text,
            onChanged: (value) {
              agProfesionales = value;
            },
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
            initialValue: agAfectivas,

            keyboardType: TextInputType.text,
            onChanged: (value) {
              agAfectivas = value;
            },
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
            initialValue: agFisicas,

            keyboardType: TextInputType.text,
            onChanged: (value) {
              agFisicas = value;
            },
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
            initialValue: agComentarios5,

            maxLines: null,
            onChanged: (value) {
              agComentarios5 = value;
            },
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
            initialValue: agDia,

            keyboardType: TextInputType.text,
            onChanged: (value) {
              agDia = value;
            },
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
            initialValue: agSemana,

            keyboardType: TextInputType.text,
            onChanged: (value) {
              agSemana = value;
            },
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
            initialValue: agMes,

            keyboardType: TextInputType.text,
            onChanged: (value) {
              agMes = value;
            },
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
            initialValue: agAno,

            keyboardType: TextInputType.text,
            onChanged: (value) {
              agAno = value;
            },
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
            initialValue: agComentarios6,

            maxLines: null,
            keyboardType: TextInputType.multiline,
            onChanged: (value) {
              agComentarios6 = value;
            },
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
            initialValue: agejecutivo,

            maxLines: null,
            onChanged: (value) {
              agejecutivo = value;
            },
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