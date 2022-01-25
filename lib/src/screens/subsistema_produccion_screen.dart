import 'package:banca_finanzas/src/widgets/input_decoration.dart';
import 'package:banca_finanzas/src/widgets/number_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

double total = 0.0; 
double totalMateriales = 0.0; 
double totalUbicacion = 0.0; 
double totalLugar = 0.0; 
double totalProcedimiento = 0.0; 
double totalMaquinaria = 0.0; 
double totalCalidad = 0.0; 
double totalReportes = 0.0; 
double materiales1 = 0.0; 
double materiales2 = 0.0; 
double materiales3 = 0.0; 
double materiales4 = 0.0; 
double materiales5 = 0.0; 
double materiales6 = 0.0; 
double materiales7 = 0.0; 
double materiales8 = 0.0; 
double ubicacion1 = 0.0; 
double ubicacion2 = 0.0; 
double ubicacion3 = 0.0; 
double ubicacion4 = 0.0; 
double ubicacion5 = 0.0; 
double lugar1 = 0.0; 
double lugar2 = 0.0; 
double lugar3 = 0.0; 
double lugar4 = 0.0; 
double lugar5 = 0.0; 
double lugar6 = 0.0; 
double lugar7 = 0.0; 
double lugar8 = 0.0; 
double lugar9 = 0.0; 
double lugar10 = 0.0; 
double lugar11 = 0.0; 
double lugar12 = 0.0; 
double lugar13 = 0.0; 
double lugar14 = 0.0; 
double procedimiento1 = 0.0; 
double procedimiento2 = 0.0; 
double procedimiento3 = 0.0; 
double procedimiento4 = 0.0; 
double procedimiento5 = 0.0; 
double procedimiento6 = 0.0; 
double procedimiento7 = 0.0; 
double procedimiento8 = 0.0; 
double procedimiento9 = 0.0; 
double procedimiento10 = 0.0; 
double procedimiento11 = 0.0; 
double procedimiento12 = 0.0;
double maquinaria1 = 0.0; 
double maquinaria2 = 0.0; 
double maquinaria3 = 0.0; 
double calidad1 = 0.0; 
double calidad2 = 0.0; 
double calidad3 = 0.0; 
double reportes1 = 0.0;
double reportes2 = 0.0;
double reportes3 = 0.0;
double reportes4 = 0.0;
double reportes5 = 0.0;

class SubsistemProduccionSreen extends StatefulWidget {
  const SubsistemProduccionSreen({Key? key}) : super(key: key);

  @override
  _SubsistemProduccionSreenState createState() => _SubsistemProduccionSreenState();
}

class _SubsistemProduccionSreenState extends State<SubsistemProduccionSreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff565D82),
        title: Text('Subsistema de Producción'),
      ),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              NumberStars( text: 'Producción: $total/85'),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1.Materiales'),
                  SizedBox( height: 10),
                  Text('¿La cantidad de materiales es la adecuada?'),
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
                              Text('Compras'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    materiales1 = rating;
                                    totalMateriales = materiales1 + materiales2 + materiales3 + materiales4 + materiales5 + materiales6 + materiales7 + materiales8 ;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Inventarios'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    materiales2 = rating;
                                    totalMateriales = materiales1 + materiales2 + materiales3 + materiales4 + materiales5 + materiales6 + materiales7 + materiales8 ;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                  Text('¿La calidad de materiales es la adecuada?'),
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
                              Text('Atributos físicos'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    materiales3 = rating;
                                    totalMateriales = materiales1 + materiales2 + materiales3 + materiales4 + materiales5 + materiales6 + materiales7 + materiales8 ;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Estandarización'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    materiales4 = rating;
                                    totalMateriales = materiales1 + materiales2 + materiales3 + materiales4 + materiales5 + materiales6 + materiales7 + materiales8 ;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Trabajabilidad'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    materiales5 = rating;
                                    totalMateriales = materiales1 + materiales2 + materiales3 + materiales4 + materiales5 + materiales6 + materiales7 + materiales8 ;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Disponibilidad'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    materiales6 = rating;
                                    totalMateriales = materiales1 + materiales2 + materiales3 + materiales4 + materiales5 + materiales6 + materiales7 + materiales8 ;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Tiempo de entregas'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    materiales7 = rating;
                                    totalMateriales = materiales1 + materiales2 + materiales3 + materiales4 + materiales5 + materiales6 + materiales7 + materiales8 ;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Precio'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    materiales8 = rating;
                                    totalMateriales = materiales1 + materiales2 + materiales3 + materiales4 + materiales5 + materiales6 + materiales7 + materiales8 ;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('2. ¿La ubicación del lugar de trabajo es adecuada?'),
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
                              Text('Materia prima'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    ubicacion1 = rating;
                                    totalUbicacion = ubicacion1 + ubicacion2 + ubicacion3 + ubicacion4 + ubicacion5;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Mano de obra'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    ubicacion2 = rating;
                                    totalUbicacion = ubicacion1 + ubicacion2 + ubicacion3 + ubicacion4 + ubicacion5;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Clientes'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    ubicacion3 = rating;
                                    totalUbicacion = ubicacion1 + ubicacion2 + ubicacion3 + ubicacion4 + ubicacion5;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Medio ambiente'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    ubicacion4 = rating;
                                    totalUbicacion = ubicacion1 + ubicacion2 + ubicacion3 + ubicacion4 + ubicacion5;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Económico'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    ubicacion5 = rating;
                                    totalUbicacion = ubicacion1 + ubicacion2 + ubicacion3 + ubicacion4 + ubicacion5;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('3. Lugar de trabajo'),
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
                              Text('Edificio'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    lugar1 = rating;
                                    totalLugar = lugar1 + lugar2 + lugar3 + lugar4 + lugar5 + lugar6 + lugar7 + lugar8 + lugar9 + lugar10 + lugar11 + lugar12 + lugar13 + lugar14;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Espacion'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    lugar2 = rating;
                                    totalLugar = lugar1 + lugar2 + lugar3 + lugar4 + lugar5 + lugar6 + lugar7 + lugar8 + lugar9 + lugar10 + lugar11 + lugar12 + lugar13 + lugar14;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                  Text('Ambientación'),
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
                              Text('Temperatura'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    lugar3 = rating;
                                    totalLugar = lugar1 + lugar2 + lugar3 + lugar4 + lugar5 + lugar6 + lugar7 + lugar8 + lugar9 + lugar10 + lugar11 + lugar12 + lugar13 + lugar14;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Luz'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    lugar4 = rating;
                                    totalLugar = lugar1 + lugar2 + lugar3 + lugar4 + lugar5 + lugar6 + lugar7 + lugar8 + lugar9 + lugar10 + lugar11 + lugar12 + lugar13 + lugar14;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Ruido'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    lugar5 = rating;
                                    totalLugar = lugar1 + lugar2 + lugar3 + lugar4 + lugar5 + lugar6 + lugar7 + lugar8 + lugar9 + lugar10 + lugar11 + lugar12 + lugar13 + lugar14;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Colores'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    lugar6 = rating;
                                    totalLugar = lugar1 + lugar2 + lugar3 + lugar4 + lugar5 + lugar6 + lugar7 + lugar8 + lugar9 + lugar10 + lugar11 + lugar12 + lugar13 + lugar14;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Ventilación'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    lugar7 = rating;
                                    totalLugar = lugar1 + lugar2 + lugar3 + lugar4 + lugar5 + lugar6 + lugar7 + lugar8 + lugar9 + lugar10 + lugar11 + lugar12 + lugar13 + lugar14;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Instalaciones sanitarias'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    lugar8 = rating;
                                    totalLugar = lugar1 + lugar2 + lugar3 + lugar4 + lugar5 + lugar6 + lugar7 + lugar8 + lugar9 + lugar10 + lugar11 + lugar12 + lugar13 + lugar14;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Lockers'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    lugar9 = rating;
                                    totalLugar = lugar1 + lugar2 + lugar3 + lugar4 + lugar5 + lugar6 + lugar7 + lugar8 + lugar9 + lugar10 + lugar11 + lugar12 + lugar13 + lugar14;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Alimentos'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    lugar10 = rating;
                                    totalLugar = lugar1 + lugar2 + lugar3 + lugar4 + lugar5 + lugar6 + lugar7 + lugar8 + lugar9 + lugar10 + lugar11 + lugar12 + lugar13 + lugar14;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                  Text('Distribución'),
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
                              Text('Por puesto'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    lugar11 = rating;
                                    totalLugar = lugar1 + lugar2 + lugar3 + lugar4 + lugar5 + lugar6 + lugar7 + lugar8 + lugar9 + lugar10 + lugar11 + lugar12 + lugar13 + lugar14;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Por taller'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    lugar12 = rating;
                                    totalLugar = lugar1 + lugar2 + lugar3 + lugar4 + lugar5 + lugar6 + lugar7 + lugar8 + lugar9 + lugar10 + lugar11 + lugar12 + lugar13 + lugar14;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Por linea'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    lugar13 = rating;
                                    totalLugar = lugar1 + lugar2 + lugar3 + lugar4 + lugar5 + lugar6 + lugar7 + lugar8 + lugar9 + lugar10 + lugar11 + lugar12 + lugar13 + lugar14;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('5.¿La maquinaria y equipo es?'),
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
                              Text('Adecuado'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    maquinaria1 = rating;
                                    totalMaquinaria = maquinaria1 + maquinaria2 + maquinaria3;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Suficiente'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    maquinaria2 = rating;
                                    totalMaquinaria = maquinaria1 + maquinaria2 + maquinaria3;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Mantenimiento'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    maquinaria3 = rating;
                                    totalMaquinaria = maquinaria1 + maquinaria2 + maquinaria3;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('6. ¿La calidad?'),
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
                              Text('¿Es estándar?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    calidad1 = rating;
                                    totalCalidad = calidad1 + calidad2 + calidad3;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('¿Se hacen mejoras a procesos?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    calidad2 = rating;
                                    totalCalidad = calidad1 + calidad2 + calidad3;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('¿Se actualiza la tecnología?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    calidad3 = rating;
                                    totalCalidad = calidad1 + calidad2 + calidad3;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('7. Reportes de Producción'),
                  SizedBox( height: 10),
                  Text('Quien'),
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
                              Text('Calidad de los materiales'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reportes1 = rating;
                                    totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Costo de los materiales'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reportes2 = rating;
                                    totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Inventarios de los materiales'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reportes3 = rating;
                                    totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Desperdicios'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reportes4 = rating;
                                    totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                              Text('Rechazos de los productos'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reportes5 = rating;
                                    totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5;
                                    total = totalMateriales + totalUbicacion + totalLugar + totalProcedimiento + totalMaquinaria + totalCalidad + totalReportes;
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
                  )
                ],
              ),
              SizedBox(height: 10),
              _Comentarios(),
              SizedBox(height: 10),
              _Botones(),

            ]
          ),
        )
      )
    );  
  }
}

class _Comentarios extends StatelessWidget {
  const _Comentarios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('8. Comentarios de Producción Paramétrico', textAlign: TextAlign.left),
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
              Navigator.pushNamed(context, 'subsistema_mercado');
            },  
            icon: Icon(Icons.arrow_back)
          ),
        ),
        CircleAvatar(
          backgroundColor: Color(0xff4D5BA6),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'subsistema_personal');
            },  
            icon: Icon(Icons.arrow_forward)
          ),
        ),
      ],
    );
  }
}