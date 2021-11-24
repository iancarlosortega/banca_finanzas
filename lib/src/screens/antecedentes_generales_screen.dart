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
        child: Container(
          margin: EdgeInsets.all(20.0),
          // child: Form(
          //   key: keyForm,
          //   child: formUI(), //Este metodo lo crearemos mas adelante
          // ),
        ),
      ),
    );
  }
}