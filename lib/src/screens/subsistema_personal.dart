import 'package:banca_finanzas/main.dart';
import 'package:banca_finanzas/src/widgets/input_decoration.dart';
import 'package:banca_finanzas/src/widgets/number_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

double total = 0.0; 
double totalMision = 0.0; 
double totalOrganigrama = 0.0; 
double totalSupervisor = 0.0; 
double totalCapacitacion = 0.0; 
double totalReclutamiento = 0.0;
double totalReportes = 0.0; 
double mision1 = 0.0; 
double mision2 = 0.0; 
double mision3 = 0.0; 
double mision4 = 0.0; 
double mision5 = 0.0; 
double mision6 = 0.0; 
double organigrama1 = 0.0; 
double organigrama2 = 0.0; 
double organigrama3 = 0.0; 
double organigrama4 = 0.0;
double supervisor1 = 0.0; 
double supervisor2 = 0.0; 
double supervisor3 = 0.0; 
double supervisor4 = 0.0; 
double capacitacion1 = 0.0; 
double capacitacion2 = 0.0; 
double capacitacion3 = 0.0; 
double capacitacion4 = 0.0;
double reclutamiento1 = 0.0; 
double reclutamiento2 = 0.0; 
double reclutamiento3 = 0.0; 
double reclutamiento4 = 0.0; 
double reclutamiento5 = 0.0; 
double reclutamiento6 = 0.0; 
double reportes1 = 0.0;
double reportes2 = 0.0;
double reportes3 = 0.0;
reiniciarspp(){
  total = 0.0;
  totalMision = 0.0;
  totalOrganigrama = 0.0;
  totalSupervisor = 0.0;
  totalCapacitacion = 0.0;
  totalReclutamiento = 0.0;
  totalReportes = 0.0;
  mision1 = 0.0;
  mision2 = 0.0;
  mision3 = 0.0;
  mision4 = 0.0;
  mision5 = 0.0;
  mision6 = 0.0;
  organigrama1 = 0.0;
  organigrama2 = 0.0;
  organigrama3 = 0.0;
  organigrama4 = 0.0;
  supervisor1 = 0.0;
  supervisor2 = 0.0;
  supervisor3 = 0.0;
  supervisor4 = 0.0;
  capacitacion1 = 0.0;
  capacitacion2 = 0.0;
  capacitacion3 = 0.0;
  capacitacion4 = 0.0;
  reclutamiento1 = 0.0;
  reclutamiento2 = 0.0;
  reclutamiento3 = 0.0;
  reclutamiento4 = 0.0;
  reclutamiento5 = 0.0;
  reclutamiento6 = 0.0;
  reportes1 = 0.0;
  reportes2 = 0.0;
  reportes3 = 0.0;
}

class SubsistemPersonalSreen extends StatefulWidget {
  const SubsistemPersonalSreen({Key? key}) : super(key: key);

  @override
  _SubsistemPersonalSreenState createState() => _SubsistemPersonalSreenState();
}

class _SubsistemPersonalSreenState extends State<SubsistemPersonalSreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff565D82),
        title: Text('Subsistema de Personal'),
      ),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              NumberStars( text: 'Personal: $total/65'),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1. Materiales'),
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
                              Text('Producto y/o servicio'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    mision1 = rating;
                                    totalMision = mision1 + mision2 + mision3 + mision4 + mision5 + mision6;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                              Text('Mercado'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    mision2 = rating;
                                    totalMision = mision1 + mision2 + mision3 + mision4 + mision5 + mision6;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox( height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Grado de desempeño'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    mision3 = rating;
                                    totalMision = mision1 + mision2 + mision3 + mision4 + mision5 + mision6;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                              Text('Valores oranizacionales'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    mision4 = rating;
                                    totalMision = mision1 + mision2 + mision3 + mision4 + mision5 + mision6;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                              Text('Compromiso de la empresa'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    mision5 = rating;
                                    totalMision = mision1 + mision2 + mision3 + mision4 + mision5 + mision6;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                              Text('Difusión'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    mision6 = rating;
                                    totalMision = mision1 + mision2 + mision3 + mision4 + mision5 + mision6;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                  SizedBox( height: 10),
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('2. Organigrama'),
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
                              Text('¿Cómo es?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    organigrama1 = rating;
                                    totalOrganigrama = organigrama1 + organigrama2 + organigrama3 + organigrama4;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
                                  });
                                },
                                itemCount: 5,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox( height: 10),
                        Text('Ingresos'),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Fijo'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    organigrama2 = rating;
                                    totalOrganigrama = organigrama1 + organigrama2 + organigrama3 + organigrama4;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox( height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Competitividad'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    organigrama3 = rating;
                                    totalOrganigrama = organigrama1 + organigrama2 + organigrama3 + organigrama4;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox( height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Métodos de aumento'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    organigrama4 = rating;
                                    totalOrganigrama = organigrama1 + organigrama2 + organigrama3 + organigrama4;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('3. Supervisor'),
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
                              Text('Liderazgo'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    supervisor1 = rating;
                                    totalSupervisor = supervisor1 + supervisor2 + supervisor3 + supervisor4;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
                                  });
                                },
                                itemCount: 4,
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
                              Text('Responsabilidad y autoridad'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    supervisor2 = rating;
                                    totalSupervisor = supervisor1 + supervisor2 + supervisor3 + supervisor4;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                              Text('Comunicación'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    supervisor3 = rating;
                                    totalSupervisor = supervisor1 + supervisor2 + supervisor3 + supervisor4;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                              Text('Disciplina'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    supervisor4 = rating;
                                    totalSupervisor = supervisor1 + supervisor2 + supervisor3 + supervisor4;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('4. Capacitación y adiestramiento'),
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
                              Text('Necesidades'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    capacitacion1 = rating;
                                    totalCapacitacion = capacitacion1 + capacitacion2 + capacitacion3 + capacitacion4;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                              Text('Fuentes'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    capacitacion2 = rating;
                                    totalCapacitacion = capacitacion1 + capacitacion2 + capacitacion3 + capacitacion4;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
                                  });
                                },
                                itemCount: 1,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Entrenamiento'),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('La empresa quiere'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    capacitacion3 = rating;
                                    totalCapacitacion = capacitacion1 + capacitacion2 + capacitacion3 + capacitacion4;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                              Text('El trabajador quiere'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    capacitacion4 = rating;
                                    totalCapacitacion = capacitacion1 + capacitacion2 + capacitacion3 + capacitacion4;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                  Text('5. Reclutamiento y selección'),
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
                              Text('Necesidades'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reclutamiento1 = rating;
                                    totalReclutamiento = reclutamiento1 + reclutamiento2 + reclutamiento3 + reclutamiento4  + reclutamiento5 + reclutamiento6;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                              Text('Rotación de personal'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reclutamiento2 = rating;
                                    totalReclutamiento = reclutamiento1 + reclutamiento2 + reclutamiento3 + reclutamiento4  + reclutamiento5 + reclutamiento6;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                              Text('Fuentes'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reclutamiento3 = rating;
                                    totalReclutamiento = reclutamiento1 + reclutamiento2 + reclutamiento3 + reclutamiento4  + reclutamiento5 + reclutamiento6;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                              Text('Inducción'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reclutamiento4 = rating;
                                    totalReclutamiento = reclutamiento1 + reclutamiento2 + reclutamiento3 + reclutamiento4  + reclutamiento5 + reclutamiento6;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
                                  });
                                },
                                itemCount: 2,
                                itemSize: 25,
                              )
                            ],
                          ),
                        ),
                        Text('Entrevista'),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff96C4F4)
                          ),
                          child: Row(
                            children: [
                              Text('Entrada'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reclutamiento5 = rating;
                                    totalReclutamiento = reclutamiento1 + reclutamiento2 + reclutamiento3 + reclutamiento4  + reclutamiento5 + reclutamiento6;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                              Text('Salida'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    reclutamiento6 = rating;
                                    totalReclutamiento = reclutamiento1 + reclutamiento2 + reclutamiento3 + reclutamiento4  + reclutamiento5 + reclutamiento6;
                                    total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                Text('6. Reportes de Personal'),
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
                            Text('Asistencia'),
                            Expanded(child: Container()),
                            RatingBar.builder(
                              itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                              onRatingUpdate: ( rating ) {
                                setState(() {
                                  reportes1 = rating;
                                  totalReportes = reportes1 + reportes2 + reportes3;
                                  total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                            Text('Productividad'),
                            Expanded(child: Container()),
                            RatingBar.builder(
                              itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                              onRatingUpdate: ( rating ) {
                                setState(() {
                                  reportes2 = rating;
                                  totalReportes = reportes1 + reportes2 + reportes3;
                                  total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
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
                            Text('Clima organizacional'),
                            Expanded(child: Container()),
                            RatingBar.builder(
                              itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                              onRatingUpdate: ( rating ) {
                                setState(() {
                                  reportes3 = rating;
                                  totalReportes = reportes1 + reportes2 + reportes3;
                                  total = totalMision + totalOrganigrama + totalSupervisor + totalCapacitacion+ totalReclutamiento + totalReportes;
                                  totalspe = total;
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
                SizedBox( height: 10),
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
        Text('7. Comentarios de Personal Paramétrico', textAlign: TextAlign.left),
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
              Navigator.pushNamed(context, 'subsistema_produccion');
            },  
            icon: Icon(Icons.arrow_back)
          ),
        ),
        CircleAvatar(
          backgroundColor: Color(0xff4D5BA6),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'subsistema_legal');
              reiniciarspp();
            },  
            icon: Icon(Icons.arrow_forward)
          ),
        ),
      ],
    );
  }
}