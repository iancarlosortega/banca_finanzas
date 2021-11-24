import 'package:flutter/material.dart';

class AntecedentesEmpresaScreen extends StatelessWidget {
  const AntecedentesEmpresaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    return Container(
      child: Text('AntecedentesEmpresaScreen'),
    );
  }
}
*/
return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Antecedentes de la Empresa'),
       ),
       body: Card(
         child: Column(
           children: <Widget>[
             Image.asset('assets/logo.png'),
           ],
         ),
       ),
     ),
   );
 }
}