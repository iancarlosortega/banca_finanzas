import 'package:flutter/material.dart';
import 'package:banca_finanzas/src/widgets/widgets.dart';


class AntecedentesEmpresaScreen extends StatelessWidget {
  const AntecedentesEmpresaScreen({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff565D82),
        title: Text('Antecedentes de la Empresa'),
      ),
      body: SingleChildScrollView( 
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          _datosGenerales(),
          _antiguedadEmpresa(),
          _estatusLegal(),
          _estatusFiscal(),
          _tamanioEmpresa(),
          _coberturaMercado(),
          _visionEmpresa(),
          _comentarioAntecedentes()

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
          Titulo(titulo: 'Datos Generales'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Nombre'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Dirección'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Teléfono y fax o email'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'R.F.C'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Domicilio Fiscal'),
        ],
      ),
    );
  }

  Widget _antiguedadEmpresa() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Antigüedad de la empresa'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Años')
        ],
      ),
    );
  }

  Widget _estatusLegal() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Estatus legal'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Persona física'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Persona moral'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'No registrada'),
        ],
      ),
    );
  }

  Widget _estatusFiscal() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Estatus fical'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: '')
        ],
      ),
    );
  }

  Widget _tamanioEmpresa() {
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
                TextFieldWidget(label: 'Operativos'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Administrativos'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Otros'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Total'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Comentarios'),
              ],
            ),
          ),
          Subtitulo(subtitulo: 'VENTAS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFieldWidget(label: 'Diarias'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Semanales'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Mensuales')
              ],
            ),
          ),
          Subtitulo(subtitulo: 'VALOR DE LOS ACTIVOS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFieldWidget(label: 'Terreno'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Bienes'),
                SizedBox( height: 10 ),
                TextFieldWidget(label: 'Otros')
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _coberturaMercado() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Cobertura del mercado'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Local'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Regional'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Internacional'),
        ],
      ),
    );
  }

  Widget _visionEmpresa() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Visión de la empresa'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Corto plazo'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Largo plazo'),
        ],
      ),
    );
  }

  Widget _comentarioAntecedentes() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Comentario ejecutivo de antecedentes'),
          SizedBox( height: 10.0 ),
          TextFieldWidget(label: 'Comentarios'),
          SizedBox( height: 50.0 ),
        ],
      ),
    );
  }




  

  
}
  



