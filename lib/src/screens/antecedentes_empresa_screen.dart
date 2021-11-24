import 'package:flutter/material.dart';

class AntecedentesEmpresaScreen extends StatelessWidget {
  const AntecedentesEmpresaScreen({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: SingleChildScrollView( child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Text(
          "Datos Generales",
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
        ),
        new Text(
          "Antiguedad de la empresa",
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
              hintText: 'Años',
            ),
          ),
        ),
        new Text(
          "Estatus Legal",
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
              hintText: 'Persona Fisica',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Persona Moral',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'No Registrada',
            ),
          ),
        ),
        new Text(
          "Estatus fiscal",
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
              hintText: 'Años',
            ),
          ),
        ),
        new Text(
          "Tamaño de la empresa",
          style: new TextStyle(fontSize:25.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        ),
        new Text(
          "Numero de empleados",
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
              hintText: 'Operativos',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Administrativos',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Otros',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Total',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Comentarios',
            ),
          ),
        ),
        new Text(
          "Ventas",
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
              hintText: 'Diarias',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Semanales',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Mensuales',
            ),
          ),
        ),
        new Text(
          "Valor de los activos",
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
              hintText: 'Terreno',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Bienes',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Otros',
            ),
          ),
        ),
        new Text(
          "Cobertura de mercado",
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
              hintText: 'Local',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Regional',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Internacional',
            ),
          ),
        ),
        new Text(
          "Vision de la empresa",
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
              hintText: 'Corto Plazo ',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Largo Plazo',
            ),
          ),
        ),
        new Text(
          "Comentario ejecutivo de antecedentes",
          style: new TextStyle(fontSize:20.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Comentarios',
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
