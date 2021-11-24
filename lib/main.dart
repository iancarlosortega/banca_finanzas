import 'package:flutter/material.dart';

//Rutas
import 'src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Godares',
      routes: getRoutes(),
      // onGenerateRoute: ( settings ) {
      //   return MaterialPageRoute(builder: (BuildContext context) => AlertPage() );
      // },
    );
  }
}