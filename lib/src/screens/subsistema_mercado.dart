import 'package:banca_finanzas/main.dart';
import 'package:banca_finanzas/src/widgets/input_decoration.dart';
import 'package:banca_finanzas/src/widgets/number_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

double total = 0.0; 
double totalProductos = 0.0; 
double totalSegmentos = 0.0; 
double totalClientes = 0.0; 
double totalExpectativas = 0.0; 
double totalComercializacion = 0.0; 
double totalReportes = 0.0; 
double producto1 = 0.0; 
double producto2 = 0.0; 
double segmento1 = 0.0; 
double segmento2 = 0.0; 
double segmento3 = 0.0; 
double segmento4 = 0.0; 
double segmento5 = 0.0; 
double segmento6 = 0.0; 
double segmento7 = 0.0; 
double cliente1 = 0.0; 
double cliente2 = 0.0; 
double cliente3 = 0.0; 
double expectativa1 = 0.0; 
double expectativa2 = 0.0; 
double expectativa3 = 0.0; 
double expectativa4 = 0.0; 
double expectativa5 = 0.0; 
double expectativa6 = 0.0; 
double expectativa7 = 0.0; 
double expectativa8 = 0.0; 
double expectativa9 = 0.0;
double comercializacion1 = 0.0; 
double comercializacion2 = 0.0; 
double comercializacion3 = 0.0;
double comercializacion4 = 0.0;
double comercializacion5 = 0.0;
double comercializacion6 = 0.0;
double comercializacion7 = 0.0;
double comercializacion8 = 0.0;
double comercializacion9 = 0.0;
double comercializacion10 = 0.0;
double comercializacion11 = 0.0;
double comercializacion12 = 0.0;
double comercializacion13 = 0.0;
double reportes1 = 0.0;
double reportes2 = 0.0;
double reportes3 = 0.0;
double reportes4 = 0.0;
double reportes5 = 0.0;
double reportes6 = 0.0;
double reportes7 = 0.0;
class SubsistemaMercadoSreen extends StatefulWidget {
  const SubsistemaMercadoSreen({Key? key}) : super(key: key);

  @override
  _SubsistemaMercadoSreenState createState() => _SubsistemaMercadoSreenState();
}

class _SubsistemaMercadoSreenState extends State<SubsistemaMercadoSreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff565D82),
        title: Text('Subsistema de Mercado'),
      ),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              NumberStars( text: 'Mercado: $total/115'),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1.Producto', textAlign: TextAlign.left),
                  SizedBox( height: 10),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Rentabilidad de los productos'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    producto1 = rating;
                                    totalProductos = producto1 + producto2;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 3,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Nuevos productos'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    producto2 = rating;
                                    totalProductos = producto1 + producto2;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('2.Segmento'),
                  SizedBox( height: 10),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Conoce sus clientes'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    segmento1 = rating;
                                    totalSegmentos = segmento1 + segmento2 + segmento3 + segmento4 + segmento5 + segmento6 + segmento7;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 5,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Flexible(child: Text('Sabe la distribución y proporción por productos y/o servicio')),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    segmento2 = rating;
                                    totalSegmentos = segmento1 + segmento2 + segmento3 + segmento4 + segmento5 + segmento6 + segmento7;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 5,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Conoce la magnitud del mercado'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    segmento3 = rating;
                                    totalSegmentos = segmento1 + segmento2 + segmento3 + segmento4 + segmento5 + segmento6 + segmento7;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 5,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Sabe indicadores claves del mercado'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    segmento4 = rating;
                                    totalSegmentos = segmento1 + segmento2 + segmento3 + segmento4 + segmento5 + segmento6 + segmento7;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 3,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Sabe otras fuentes de información'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    segmento5 = rating;
                                    totalSegmentos = segmento1 + segmento2 + segmento3 + segmento4 + segmento5 + segmento6 + segmento7;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Conoce su mercado potencial actual'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    segmento6 = rating;
                                    totalSegmentos = segmento1 + segmento2 + segmento3 + segmento4 + segmento5 + segmento6 + segmento7;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 3,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Conoce su mercado potencial en tendencia'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    segmento7 = rating;
                                    totalSegmentos = segmento1 + segmento2 + segmento3 + segmento4 + segmento5 + segmento6 + segmento7;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('3.Cliente', textAlign: TextAlign.left),
                  SizedBox( height: 10),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Usuario'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    cliente1 = rating;
                                    totalClientes = cliente1 + cliente2 + cliente3;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Decisor'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    cliente2 = rating;
                                    totalClientes = cliente1 + cliente2 + cliente3;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('De los recursos'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    cliente3 = rating;
                                    totalClientes = cliente1 + cliente2 + cliente3;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('4.Expectativa', textAlign: TextAlign.left),
                  SizedBox( height: 10),
                  Text('¿Por que compran sus productos?', textAlign: TextAlign.left),
                  SizedBox( height: 10),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Calidad'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    expectativa1 = rating;
                                    totalExpectativas = expectativa1 + expectativa2 + expectativa3 + expectativa4 + expectativa5 + expectativa6 + expectativa7 + expectativa8 + expectativa9;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Servicio'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    expectativa2 = rating;
                                    totalExpectativas = expectativa1 + expectativa2 + expectativa3 + expectativa4 + expectativa5 + expectativa6 + expectativa7 + expectativa8 + expectativa9;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Precio'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    expectativa3 = rating;
                                    totalExpectativas = expectativa1 + expectativa2 + expectativa3 + expectativa4 + expectativa5 + expectativa6 + expectativa7 + expectativa8 + expectativa9;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox( height: 10),
                  Text('Competencia', textAlign: TextAlign.left),
                  SizedBox( height: 10),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Los puede identificar?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    expectativa4 = rating;
                                    totalExpectativas = expectativa1 + expectativa2 + expectativa3 + expectativa4 + expectativa5 + expectativa6 + expectativa7 + expectativa8 + expectativa9;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Evalue la cantidad'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    expectativa5 = rating;
                                    totalExpectativas = expectativa1 + expectativa2 + expectativa3 + expectativa4 + expectativa5 + expectativa6 + expectativa7 + expectativa8 + expectativa9;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Evalue la calidad'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    expectativa6 = rating;
                                    totalExpectativas = expectativa1 + expectativa2 + expectativa3 + expectativa4 + expectativa5 + expectativa6 + expectativa7 + expectativa8 + expectativa9;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Evalue la precios'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    expectativa7 = rating;
                                    totalExpectativas = expectativa1 + expectativa2 + expectativa3 + expectativa4 + expectativa5 + expectativa6 + expectativa7 + expectativa8 + expectativa9;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Conoce las fortalezas de su competencia?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    expectativa8 = rating;
                                    totalExpectativas = expectativa1 + expectativa2 + expectativa3 + expectativa4 + expectativa5 + expectativa6 + expectativa7 + expectativa8 + expectativa9;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Conoce las debilidades de su competencia?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    expectativa9 = rating;
                                    totalExpectativas = expectativa1 + expectativa2 + expectativa3 + expectativa4 + expectativa5 + expectativa6 + expectativa7 + expectativa8 + expectativa9;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('5.Comercialización', textAlign: TextAlign.left),
                  SizedBox( height: 10),
                  Text('Sistemas de información', textAlign: TextAlign.left),
                  SizedBox( height: 10),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('¿Se anuncian bien en medios personales?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    comercializacion1 = rating;
                                    totalComercializacion = comercializacion1 + comercializacion2 + comercializacion3 + comercializacion4 + comercializacion5 + comercializacion6 + comercializacion7 + comercializacion8 + comercializacion9 + comercializacion10 + comercializacion11 + comercializacion12 + comercializacion13;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('¿Se anuncian bien en medios masivos?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    comercializacion2 = rating;
                                    totalComercializacion = comercializacion1 + comercializacion2 + comercializacion3 + comercializacion4 + comercializacion5 + comercializacion6 + comercializacion7 + comercializacion8 + comercializacion9 + comercializacion10 + comercializacion11 + comercializacion12 + comercializacion13;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('¿El anuncio transmite el mensaje deseado?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    comercializacion3 = rating;
                                    totalComercializacion = comercializacion1 + comercializacion2 + comercializacion3 + comercializacion4 + comercializacion5 + comercializacion6 + comercializacion7 + comercializacion8 + comercializacion9 + comercializacion10 + comercializacion11 + comercializacion12 + comercializacion13;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox( height: 10),
                  Text('Imagen corporativa', textAlign: TextAlign.left),
                  SizedBox( height: 10),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Emblema'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    comercializacion4 = rating;
                                    totalComercializacion = comercializacion1 + comercializacion2 + comercializacion3 + comercializacion4 + comercializacion5 + comercializacion6 + comercializacion7 + comercializacion8 + comercializacion9 + comercializacion10 + comercializacion11 + comercializacion12 + comercializacion13;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Logotipo'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    comercializacion5 = rating;
                                    totalComercializacion = comercializacion1 + comercializacion2 + comercializacion3 + comercializacion4 + comercializacion5 + comercializacion6 + comercializacion7 + comercializacion8 + comercializacion9 + comercializacion10 + comercializacion11 + comercializacion12 + comercializacion13;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 3,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox( height: 10),
                  Text('Ventas', textAlign: TextAlign.left),
                  SizedBox( height: 10),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('¿Administra su número de vendedores?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    comercializacion6 = rating;
                                    totalComercializacion = comercializacion1 + comercializacion2 + comercializacion3 + comercializacion4 + comercializacion5 + comercializacion6 + comercializacion7 + comercializacion8 + comercializacion9 + comercializacion10 + comercializacion11 + comercializacion12 + comercializacion13;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('¿Administra el reparto del territorio?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    comercializacion7 = rating;
                                    totalComercializacion = comercializacion1 + comercializacion2 + comercializacion3 + comercializacion4 + comercializacion5 + comercializacion6 + comercializacion7 + comercializacion8 + comercializacion9 + comercializacion10 + comercializacion11 + comercializacion12 + comercializacion13;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('¿Administra el equipo (fisico) de ventas?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    comercializacion8 = rating;
                                    totalComercializacion = comercializacion1 + comercializacion2 + comercializacion3 + comercializacion4 + comercializacion5 + comercializacion6 + comercializacion7 + comercializacion8 + comercializacion9 + comercializacion10 + comercializacion11 + comercializacion12 + comercializacion13;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('¿Tiene un plan de presentacion?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    comercializacion9 = rating;
                                    totalComercializacion = comercializacion1 + comercializacion2 + comercializacion3 + comercializacion4 + comercializacion5 + comercializacion6 + comercializacion7 + comercializacion8 + comercializacion9 + comercializacion10 + comercializacion11 + comercializacion12 + comercializacion13;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('¿Controla las cuotas de las ventas?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    comercializacion10 = rating;
                                    totalComercializacion = comercializacion1 + comercializacion2 + comercializacion3 + comercializacion4 + comercializacion5 + comercializacion6 + comercializacion7 + comercializacion8 + comercializacion9 + comercializacion10 + comercializacion11 + comercializacion12 + comercializacion13;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('¿Controla los presupuestos de las ventas?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    comercializacion11 = rating;
                                    totalComercializacion = comercializacion1 + comercializacion2 + comercializacion3 + comercializacion4 + comercializacion5 + comercializacion6 + comercializacion7 + comercializacion8 + comercializacion9 + comercializacion10 + comercializacion11 + comercializacion12 + comercializacion13;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('¿Controla los reportes de las ventas?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    comercializacion12 = rating;
                                    totalComercializacion = comercializacion1 + comercializacion2 + comercializacion3 + comercializacion4 + comercializacion5 + comercializacion6 + comercializacion7 + comercializacion8 + comercializacion9 + comercializacion10 + comercializacion11 + comercializacion12 + comercializacion13;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('¿Controla la rentabilidad de cada vendedor?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    comercializacion13 = rating;
                                    totalComercializacion = comercializacion1 + comercializacion2 + comercializacion3 + comercializacion4 + comercializacion5 + comercializacion6 + comercializacion7 + comercializacion8 + comercializacion9 + comercializacion10 + comercializacion11 + comercializacion12 + comercializacion13;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('6.Reportes de Mercado', textAlign: TextAlign.left),
                  SizedBox( height: 10),
                  Text('Quien', textAlign: TextAlign.left),
                  SizedBox( height: 10),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Clientes'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reportes1 = rating;
                                    totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5 + reportes6 + reportes7;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 5,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Producto y/o servicio'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reportes2 = rating;
                                    totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5 + reportes6 + reportes7;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 5,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Canal de distribución'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reportes3 = rating;
                                    totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5 + reportes6 + reportes7;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 5,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Precio'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reportes4 = rating;
                                    totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5 + reportes6 + reportes7;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 5,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Competencia'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reportes5 = rating;
                                    totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5 + reportes6 + reportes7;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 5,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Sistemas de información'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reportes6 = rating;
                                    totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5 + reportes6 + reportes7;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                  });
                                },
                                itemCount: 5,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Ventas'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reportes7 = rating;
                                    totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5 + reportes6 + reportes7;
                                    total = totalProductos + totalSegmentos + totalClientes + totalExpectativas + totalComercializacion + totalReportes;
                                    totalsm =total;
                                  });
                                },
                                itemCount: 5,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('7. Comentarios de Mercado Paramétrico', textAlign: TextAlign.left),
                  SizedBox( height: 10),
                  Container(
                    child: Column(
                      children: [
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
                        SizedBox( height: 10.0 ),
                      ],
                    ),
                  )
                ]
              ),
              SizedBox(height: 10),
              _Botones(),

            ]
          ),
        )
      )
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
              Navigator.pushNamed(context, 'familia_empresa');
            },  
            icon: Icon(Icons.arrow_back)
          ),
        ),
        CircleAvatar(
          backgroundColor: Color(0xff4D5BA6),
          child: IconButton(
            onPressed: () {
              print("totalsm");
              print(totalsm);
              Navigator.pushNamed(context, 'subsistema_produccion');
            },  
            icon: Icon(Icons.arrow_forward)
          ),
        ),
      ],
    );
  }
}