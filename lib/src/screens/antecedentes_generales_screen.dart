import 'package:flutter/material.dart';

class AntecedentesGeneralesScreen extends StatelessWidget {
  const AntecedentesGeneralesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Antecedentes Generales'),
      ),
      body: Center(
      child: SingleChildScrollView( child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        /* 
          Datos Generales del Empresario
        */
        new Text(
          "Datos Generales del empresario",
          style: new TextStyle(fontSize:25.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),

          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Nombres y Apellidos',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Direccion',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Telefono',
            ),
          ),
        ),
        
        /* 
          Antecedentes del empresario
        */
        new Text(
          "Antecedentes del empresario",
          style: new TextStyle(fontSize:25.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        ),

        /* 
          "EL EMPRESARIO"
        */
        new Text(
          "EL EMPRESARIO",
          style: new TextStyle(fontSize:30.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        ),
        
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ciudad de origen',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Lugar',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Edad',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Estado civil',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ocupación',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Escolaridad',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Estado de salud',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Comentarios del empresario ...',
            ),
          ),
        ),

        /* 
          "LOS PADRES"
        */
        
        new Text(
          "LOS PADRES",
          style: new TextStyle(fontSize:25.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Origen de los padres',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Lugar',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Edad',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Estado civil',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ocupación',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Escolaridad',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Estado de salud',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Comentarios de los padres...',
            ),
          ),
        ),

        /* 
          "NÚMERO DE HERMANOS NACIDOS"
        */

        new Text(
          "NÚMERO DE HERMANOS NACIDOS",
          style: new TextStyle(fontSize:25.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        ),

        
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Nombres',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Edades',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ocupaciones',
            ),
          ),
        ),
        
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Luegar dentro de los hermanos',
            ),
          ),
        ),
        
        /*
          Antecedentes de la pareja
        */
        new Text(
          "Antecedentes de la pareja",
          style: new TextStyle(fontSize:30.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        ),

        /*
          LA PAREJA
        */
        new Text(
          "LA PAREJA",
          style: new TextStyle(fontSize:30.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Nombre de la pareja',
            ),
          ),
        ),
        
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Origen',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Lugar de residencia',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Edad',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Estado de salud',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ocupación',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Escolaridad',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Comentarios de la pareja...',
            ),
          ),
        ),

        /*
          LOS SUEGROS
        */
        new Text(
          "LOS SUEGROS",
          style: new TextStyle(fontSize:30.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Nombres',
            ),
          ),
        ),
        
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Origen',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Lugar de residencia',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Edad',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Estado de salud',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ocupación',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Escolaridad',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Comentarios de los suegros...',
            ),
          ),
        ),

        /*
          CUÑADOS
        */
        new Text(
          "CUÑADOS",
          style: new TextStyle(fontSize:30.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Nombres',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Edades',
            ),
          ),
        ),
        
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ocupaciones',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Lugar dentro de sus hermanos',
            ),
          ),
        ),

      ],
    )
    )
    )
    );
  }
}