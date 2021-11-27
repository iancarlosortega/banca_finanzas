import 'package:banca_finanzas/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AntecedentesGeneralesScreen extends StatelessWidget {
  const AntecedentesGeneralesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff565D82),
        title: Text('Antecedentes Generales'),
      ),
      body: SingleChildScrollView( 
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          _datosGenerales(),
          _antecedentesEmpresario(),
          _antecedentesPareja(),

        ])
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff565D82),
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
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
          ),
          Subtitulo(subtitulo: 'LOS PADRES'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFieldWidget(label: 'Origen de los padres'),
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
                TextFieldWidget(label: 'Comentarios de los padres...'),
              ],
            ),
          ),
          Subtitulo(subtitulo: 'NÚMERO DE HERMANOS NACIDOS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFieldWidget(label: 'Nombres'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Edades'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Ocupaciones'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Lugar dentro de sus hermanos')
              ],
            ),
          ),
        ],
      ),
    );

  }

  Widget _antecedentesPareja() {
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
                TextFieldWidget(label: 'Nombre de la pareja'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Origen'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Lugar'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Edad'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Ocupación'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Escolaridad'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Estado de salud'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Comentarios de la pareja...'),
              ],
            ),
          ),
          Subtitulo(subtitulo: 'LOS SUEGROS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFieldWidget(label: 'Nombres'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Origen'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Lugar'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Edad'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Viven'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Ocupación'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Escolaridad'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Estado de salud'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Comentarios de los suegros...'),
              ],
            ),
          ),
          Subtitulo(subtitulo: 'NÚMERO DE CUÑADOS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFieldWidget(label: 'Nombres'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Edades'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Ocupaciones'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Lugar dentro de sus hermanos'),
                SizedBox( height: 50 ),
              ],
            ),
          ),
        ],
      ),
    );
  }




}