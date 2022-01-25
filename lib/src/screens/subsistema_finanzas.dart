import 'package:banca_finanzas/main.dart';
import 'package:flutter/material.dart';
import 'package:banca_finanzas/src/widgets/input_decoration.dart';
import 'package:banca_finanzas/src/widgets/number_stars.dart';
import 'package:banca_finanzas/src/widgets/titulo.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


double total = 0.0;
double totalCosteo = 0.0;
double totalFinanciera = 0.0;
double totalFinanzas = 0.0;
double totalAdministracion = 0.0;
double totalProcedimientos = 0.0;
double totalSeguros = 0.0;
double totalReportes = 0.0;
double costeo1 = 0.0;
double costeo2 = 0.0;
double financiera1 = 0.0;
double financiera2 = 0.0;
double financiera3 = 0.0;
double financiera4 = 0.0;
double financiera5 = 0.0;
double administracion1 = 0.0;
double administracion2 = 0.0;
double administracion3 = 0.0;
double administracion4 = 0.0;
double administracion5 = 0.0;
double administracion6 = 0.0;
double administracion7 = 0.0;
double administracion8 = 0.0;
double seguros1 = 0.0;
double seguros2 = 0.0;
double seguros3 = 0.0;
double seguros4 = 0.0;
double seguros5 = 0.0;
double finanzas1 = 0.0;
double finanzas2 = 0.0;
double finanzas3 = 0.0;
double reportes1 = 0.0;
double reportes2 = 0.0;
double reportes3 = 0.0;
double reportes4 = 0.0;
double reportes5 = 0.0;

reiniciarsf(){
  total = 0.0;
  totalCosteo = 0.0;
  totalFinanciera = 0.0;
  totalFinanzas = 0.0;
  totalAdministracion = 0.0;
  totalProcedimientos = 0.0;
  totalSeguros = 0.0;
  totalReportes = 0.0;
  costeo1 = 0.0;
  costeo2 = 0.0;
  financiera1 = 0.0;
  financiera2 = 0.0;
  financiera3 = 0.0;
  financiera4 = 0.0;
  financiera5 = 0.0;
  administracion1 = 0.0;
  administracion2 = 0.0;
  administracion3 = 0.0;
  administracion4 = 0.0;
  administracion5 = 0.0;
  administracion6 = 0.0;
  administracion7 = 0.0;
  administracion8 = 0.0;
  seguros1 = 0.0;
  seguros2 = 0.0;
  seguros3 = 0.0;
  seguros4 = 0.0;
  seguros5 = 0.0;
  finanzas1 = 0.0;
  finanzas2 = 0.0;
  finanzas3 = 0.0;
  reportes1 = 0.0;
  reportes2 = 0.0;
  reportes3 = 0.0;
  reportes4 = 0.0;
  reportes5 = 0.0;
}
class SubsistemaFinanzasSreen extends StatefulWidget {
  const SubsistemaFinanzasSreen({Key? key}) : super(key: key);

  @override
  _SubsistemaFinanzasSreenState createState() => _SubsistemaFinanzasSreenState();
}

class _SubsistemaFinanzasSreenState extends State<SubsistemaFinanzasSreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff565D82),
          title: Text('Subsistema de Finanzas'),
        ),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    NumberStars( text: 'Finanzas: $total/90'),
                    SizedBox(height: 10),
                    _Historia(),
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
                                    Text('Fijos'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          costeo1 = rating;
                                          totalCosteo = costeo1 + costeo2;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                    Text('Variables'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          costeo2 = rating;
                                          totalCosteo = costeo1 + costeo2;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                    _Punto(),
                    SizedBox(height: 10),
                    _Contabilidad(),
                    SizedBox(height: 10),
                    _Presupuesto(),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('6. Información financiera', textAlign: TextAlign.left),
                        SizedBox( height: 10),
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
                                    Text('Cuales'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          financiera1 = rating;
                                          totalFinanciera = financiera1 + financiera2 + financiera3 + financiera4 + financiera5;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                    Text('Cada cuanto'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          financiera2 = rating;
                                          totalFinanciera = financiera1 + financiera2 + financiera3 + financiera4 + financiera5;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                    Text('Se entienden'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          financiera3 = rating;
                                          totalFinanciera = financiera1 + financiera2 + financiera3 + financiera4 + financiera5;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                    Text('Precisos'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          financiera4 = rating;
                                          totalFinanciera = financiera1 + financiera2 + financiera3 + financiera4 + financiera5;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                    Text('Se usan'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          financiera5 = rating;
                                          totalFinanciera = financiera1 + financiera2 + financiera3 + financiera4 + financiera5;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                        Text('7. Finanzas en la empresa', textAlign: TextAlign.left),
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
                                    Text('Liquidez'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          finanzas1 = rating;
                                          totalFinanzas = finanzas1 + finanzas2 + finanzas3;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                    Text('Deuda'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          finanzas2 = rating;
                                          totalFinanzas = finanzas1 + finanzas2 + finanzas3;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                    Text('Renta'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          finanzas3 = rating;
                                          totalFinanzas = finanzas1 + finanzas2 + finanzas3;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
                                        });
                                      },
                                      itemCount: 4,
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
                        Text('8. Administracion financiera', textAlign: TextAlign.left),
                        SizedBox( height: 10),
                        //  Text('Quien', textAlign: TextAlign.left),
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
                                        Text('Manejo del efectivo'),
                                        Expanded(child: Container()),
                                        RatingBar.builder(
                                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                          onRatingUpdate: ( rating ) {
                                            setState(() {
                                              administracion1 = rating;
                                              totalAdministracion = administracion1 + administracion2 + administracion3 + administracion4 + administracion5 + administracion6 + administracion7 + administracion8;
                                              total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                        Text('Cuentas por cobrar'),
                                        Expanded(child: Container()),
                                        RatingBar.builder(
                                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                          onRatingUpdate: ( rating ) {
                                            setState(() {
                                              administracion2 = rating;
                                              totalAdministracion = administracion1 + administracion2 + administracion3 + administracion4 + administracion5 + administracion6 + administracion7 + administracion8;
                                              total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                        Text('Inventarios de productos terminados'),
                                        Expanded(child: Container()),
                                        RatingBar.builder(
                                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                          onRatingUpdate: ( rating ) {
                                            setState(() {
                                              administracion3 = rating;
                                              totalAdministracion = administracion1 + administracion2 + administracion3 + administracion4 + administracion5 + administracion6 + administracion7 + administracion8;
                                              total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                        Text('Nuevas inversiones'),
                                        Expanded(child: Container()),
                                        RatingBar.builder(
                                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                          onRatingUpdate: ( rating ) {
                                            setState(() {
                                              administracion4 = rating;
                                              totalAdministracion = administracion1 + administracion2 + administracion3 + administracion4 + administracion5 + administracion6 + administracion7 + administracion8;
                                              total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                        Text('Cuentas por pagar'),
                                        Expanded(child: Container()),
                                        RatingBar.builder(
                                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                          onRatingUpdate: ( rating ) {
                                            setState(() {
                                              administracion5 = rating;
                                              totalAdministracion = administracion1 + administracion2 + administracion3 + administracion4 + administracion5 + administracion6 + administracion7 + administracion8;
                                              total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
                                            });
                                          },
                                          itemCount: 3,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ])), Text('Contribuciones', textAlign: TextAlign.left),

                        Container(
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color(0xff96C4F4)
                                ),
                                child: Row(
                                  children: [
                                    Text('Impuestos'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          administracion6 = rating;
                                          totalAdministracion = administracion1 + administracion2 + administracion3 + administracion4 + administracion5 + administracion6 + administracion7 + administracion8;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                    Text('Aportaciones de seguridad'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          administracion7 = rating;
                                          totalAdministracion = administracion1 + administracion2 + administracion3 + administracion4 + administracion5 + administracion6 + administracion7 + administracion8;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                    Text('Contribuciones de mejoras'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          administracion8 = rating;
                                          totalAdministracion = administracion1 + administracion2 + administracion3 + administracion4 + administracion5 + administracion6 + administracion7 + administracion8;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                        Text('9. Procedimientos de oficina', textAlign: TextAlign.left),
                        Container(
                          child: Column(
                            children: [
                              oficinas
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('10. Seguros', textAlign: TextAlign.left),
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
                                    Text('Maquinaria'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          seguros1 = rating;
                                          totalSeguros = seguros1 + seguros2 + seguros3 + seguros4 + seguros5;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                    Text('Edificio'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          seguros2 = rating;
                                          totalSeguros = seguros1 + seguros2 + seguros3 + seguros4 + seguros5;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                    Text('Equipo'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          seguros3 = rating;
                                          totalSeguros = seguros1 + seguros2 + seguros3 + seguros4 + seguros5;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                    Text('Gastos médicos'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          seguros4 = rating;
                                          totalSeguros = seguros1 + seguros2 + seguros3 + seguros4 + seguros5;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                    Text('Vida'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: ( rating ) {
                                        setState(() {
                                          seguros5 = rating;
                                          totalSeguros = seguros1 + seguros2 + seguros3 + seguros4 + seguros5;
                                          total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                        Text('11. Reportes de finanzas', textAlign: TextAlign.left),
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
                                        Text('Efectivo'),
                                        Expanded(child: Container()),
                                        RatingBar.builder(
                                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                          onRatingUpdate: ( rating ) {
                                            setState(() {
                                              reportes1 = rating;
                                              totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5;
                                              total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                        Text('Cuentas por cobrar'),
                                        Expanded(child: Container()),
                                        RatingBar.builder(
                                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                          onRatingUpdate: ( rating ) {
                                            setState(() {
                                              reportes2 = rating;
                                              totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5;
                                              total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                        Text('Inventarios'),
                                        Expanded(child: Container()),
                                        RatingBar.builder(
                                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                          onRatingUpdate: ( rating ) {
                                            setState(() {
                                              reportes3 = rating;
                                              totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5;
                                              total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                        Text('Cuentas por pagar'),
                                        Expanded(child: Container()),
                                        RatingBar.builder(
                                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                          onRatingUpdate: ( rating ) {
                                            setState(() {
                                              reportes4 = rating;
                                              totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5;
                                              total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
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
                                        Text('Contribuciones fiscales'),
                                        Expanded(child: Container()),
                                        RatingBar.builder(
                                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                          onRatingUpdate: ( rating ) {
                                            setState(() {
                                              reportes5 = rating;
                                              totalReportes = reportes1 + reportes2 + reportes3 + reportes4 + reportes5;
                                              total = totalCosteo + totalFinanciera + totalFinanzas + totalAdministracion + totalProcedimientos + totalSeguros + totalReportes;
                                              totalsf =total;
                                            });
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ])), Text('Forma', textAlign: TextAlign.left),

                        Container(
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color(0xff96C4F4)
                                ),
                                child: Row(
                                  children: [
                                    Text('Lírico'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: (rating) {},
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
                                    Text('Manual'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: (rating) {},
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
                                    Text('Computarizado'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: (rating) {},
                                      itemSize: 25,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color(0xff96C4F4)
                                ),
                                child: Row(
                                  children: [
                                    Text('Personal'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: (rating) {},
                                      itemSize: 25,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color(0xff96C4F4)
                                ),
                                child: Row(
                                  children: [
                                    Text('Organizacional'),
                                    Expanded(child: Container()),
                                    RatingBar.builder(
                                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                                      onRatingUpdate: (rating) {},
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

class _Historia extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('1. Historia de los recursos financieros:', textAlign: TextAlign.left),
        SizedBox( height: 10),

      ],
    );
  }
}
class _Punto extends StatelessWidget {
  const _Punto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('3. Conoce su punto de equilibrio', textAlign: TextAlign.left),
        Container(
          child: Column(
            children: [
              tipo
            ],
          ),
        )
      ],
    );
  }
}

class _Contabilidad extends StatelessWidget {
  const _Contabilidad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('4. Sistema de contabilidad', textAlign: TextAlign.left),
        Container(
          child: Column(
            children: [
              frecuen
            ],
          ),
        )
      ],
    );
  }
}
class _Presupuesto extends StatelessWidget {
  const _Presupuesto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('5. Presupuesto', textAlign: TextAlign.left),
        Container(
          child: Column(
            children: [
              retribucion
            ],
          ),
        )
      ],
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
          Text('12. Comentarios de Finanzas Paramétrico', textAlign: TextAlign.left),
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
                Navigator.pushNamed(context, 'subsistema_legal');
              },
              icon: Icon(Icons.arrow_back)
          ),
        ),
        CircleAvatar(
          backgroundColor: Color(0xff4D5BA6),
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'plan_mejora');
              },
              icon: Icon(Icons.arrow_forward)
          ),
        ),
      ],
    );
  }
}







enum tipoApoyo { Lirico, Manual, Personal, Organizacional}
enum frecuencia { IngresoGasto, Pordepartamento, Porcentrodelcosto}
enum retribu { Lirico, Manual, Computarizado}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  tipoApoyo? _character = tipoApoyo.Lirico;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Lirico'),
          leading: Radio<tipoApoyo>(
            value: tipoApoyo.Lirico,
            groupValue: _character,
            onChanged: (tipoApoyo? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Manual'),
          leading: Radio<tipoApoyo>(
            value: tipoApoyo.Manual,
            groupValue: _character,
            onChanged: (tipoApoyo? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Personal'),
          leading: Radio<tipoApoyo>(
            value: tipoApoyo.Personal,
            groupValue: _character,
            onChanged: (tipoApoyo? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Organizacional'),
          leading: Radio<tipoApoyo>(
            value: tipoApoyo.Organizacional,
            groupValue: _character,
            onChanged: (tipoApoyo? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),

      ],
    );
  }
}
class MyStatefulWidget2 extends StatefulWidget {
  const MyStatefulWidget2({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget2> createState() => _MyStatefulWidgetState2();
}
class _MyStatefulWidgetState2 extends State<MyStatefulWidget2> {
  frecuencia? _character2 = frecuencia.IngresoGasto;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Ingreso / Gasto'),
          leading: Radio<frecuencia>(
            value: frecuencia.IngresoGasto,
            groupValue: _character2,
            onChanged: (frecuencia? value) {
              setState(() {
                _character2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Por Departamento'),
          leading: Radio<frecuencia>(
            value: frecuencia.Pordepartamento,
            groupValue: _character2,
            onChanged: (frecuencia? value) {
              setState(() {
                _character2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Por Centro Del Costo'),
          leading: Radio<frecuencia>(
            value: frecuencia.Porcentrodelcosto,
            groupValue: _character2,
            onChanged: (frecuencia? value) {
              setState(() {
                _character2 = value;
              });
            },
          ),
        ),


      ],
    );
  }
}
class MyStatefulWidget3 extends StatefulWidget {
  const MyStatefulWidget3({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget3> createState() => _MyStatefulWidgetState3();
}
class _MyStatefulWidgetState3 extends State<MyStatefulWidget3> {
  retribu? _character3 = retribu.Lirico;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Lirico'),
          leading: Radio<retribu>(
            value: retribu.Lirico,
            groupValue: _character3,
            onChanged: (retribu? value) {
              setState(() {
                _character3 = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Manual'),
          leading: Radio<retribu>(
            value: retribu.Manual,
            groupValue: _character3,
            onChanged: (retribu? value) {
              setState(() {
                _character3 = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Computarizado'),
          leading: Radio<retribu>(
            value: retribu.Computarizado,
            groupValue: _character3,
            onChanged: (retribu? value) {
              setState(() {
                _character3 = value;
              });
            },
          ),
        ),


      ],
    );
  }
}



var datos = Container(
  padding: EdgeInsets.all(15.0),
  child: Column(
    children: [
      Titulo(titulo: 'Datos Familiar'),
      SizedBox( height: 10.0 ),
      TextFormField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xffA4A4A4),
        style: TextStyle(
            color: Colors.black
        ),
        decoration: InputDecorations.loginInputDecoration(
          hintText: 'Nombre',
        ),
      ),
      SizedBox( height: 10.0 ),
      TextFormField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xffA4A4A4),
        style: TextStyle(
            color: Colors.black
        ),
        decoration: InputDecorations.loginInputDecoration(
          hintText: 'Puesto',
        ),
      ),
      SizedBox( height: 10.0 ),
      TextFormField(
        keyboardType: TextInputType.text,
        cursorColor: Color(0xffA4A4A4),
        style: TextStyle(
            color: Colors.black
        ),
        decoration: InputDecorations.loginInputDecoration(
          hintText: 'Relacion',
        ),
      ),

    ],
  ),
);

var tipo = Container(
    padding: EdgeInsets.all(15.0),
    child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyStatefulWidget()
            ],
          )
        ]));
var frecuen = Container(
    padding: EdgeInsets.all(15.0),
    child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyStatefulWidget2()
            ],
          )
        ]));
var retribucion = Container(
    padding: EdgeInsets.all(15.0),
    child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyStatefulWidget3()
            ],
          )
        ]));
var oficinas = Container(
    padding: EdgeInsets.all(15.0),
    child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyStatefulWidget3()
            ],
          )
        ]));