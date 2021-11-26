import 'package:banca_finanzas/src/widgets/subtitulo.dart';
import 'package:banca_finanzas/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AntecedentesGeneralesScreen extends StatelessWidget {
  const AntecedentesGeneralesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Antecedentes Generales'),
      ),
      body: SingleChildScrollView( 
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          _datosGenerales(),
          _antecedentesEmpresario(),

        ])
      )
    );
  }

  Widget _datosGenerales() {

    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Datos Generales del empresario'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Nombres y Apellidos'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Dirección'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Teléfono'),
        ],
      ),
    );

  }

  Widget _antecedentesEmpresario() {

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
                TextFieldWidget(label: 'Ciudad de origen'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Lugar'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Edad'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Estado civil'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Ocupación'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Escolaridad'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Estado de salud'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Comentarios del empresario...'),
              ],
            ),
          )
        ],
      ),
    );

  }

  




}