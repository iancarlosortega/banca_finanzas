import 'package:banca_finanzas/src/widgets/input_decoration.dart';
import 'package:banca_finanzas/src/widgets/number_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

double total = 0.0; 
double totalEmpresa = 0.0; 
double totalLaboral = 0.0; 
double totalProveedor = 0.0; 
double totalClientes = 0.0;
double empresa1 = 0.0; 
double empresa2 = 0.0; 
double empresa3 = 0.0; 
double empresa4 = 0.0; 
double empresa5 = 0.0; 
double empresa6 = 0.0; 
double empresa7 = 0.0; 
double empresa8 = 0.0; 
double laboral1 = 0.0; 
double laboral2 = 0.0; 
double laboral3 = 0.0; 
double laboral4 = 0.0;
double laboral5 = 0.0; 
double laboral6 = 0.0; 
double laboral7 = 0.0; 
double laboral8 = 0.0; 
double proveedores1 = 0.0; 
double proveedores2 = 0.0; 
double proveedores3 = 0.0; 
double clientes1 = 0.0;
double clientes2 = 0.0;
double clientes3 = 0.0;

class SubsistemaLegalSreen extends StatefulWidget {
  const SubsistemaLegalSreen({Key? key}) : super(key: key);

  @override
  _SubsistemaLegalSreenState createState() => _SubsistemaLegalSreenState();
}

class _SubsistemaLegalSreenState extends State<SubsistemaLegalSreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff565D82),
        title: Text('Subsistema Legal'),
      ),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              NumberStars( text: 'Legal: $total/45'),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1. Empresa'),
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
                              Text('¿El estatus legal es el adecuado?'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    empresa1 = rating;
                                    totalEmpresa = empresa1 + empresa2 + empresa3 + empresa4 + empresa5 + empresa6 + empresa7 + empresa8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                  SizedBox( height: 5),
                  Text('Acta constitutiva'),
                  SizedBox( height: 5),
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
                              Text('Objeto social'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    empresa2 = rating;
                                    totalEmpresa = empresa1 + empresa2 + empresa3 + empresa4 + empresa5 + empresa6 + empresa7 + empresa8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                  SizedBox( height: 5),
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
                              Text('Consejo de administración'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    empresa3 = rating;
                                    totalEmpresa = empresa1 + empresa2 + empresa3 + empresa4 + empresa5 + empresa6 + empresa7 + empresa8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                  SizedBox( height: 5),
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
                              Text('Entrada y salida de socios'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    empresa4 = rating;
                                    totalEmpresa = empresa1 + empresa2 + empresa3 + empresa4 + empresa5 + empresa6 + empresa7 + empresa8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                  SizedBox( height: 5),
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
                              Text('Libros de registro de socios  '),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    empresa5 = rating;
                                    totalEmpresa = empresa1 + empresa2 + empresa3 + empresa4 + empresa5 + empresa6 + empresa7 + empresa8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                  SizedBox( height: 5),
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
                              Text('Libros de actas'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    empresa6 = rating;
                                    totalEmpresa = empresa1 + empresa2 + empresa3 + empresa4 + empresa5 + empresa6 + empresa7 + empresa8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                  SizedBox( height: 5),
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
                              Text('Se tiene las licensias y permisos en regla'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    empresa7 = rating;
                                    totalEmpresa = empresa1 + empresa2 + empresa3 + empresa4 + empresa5 + empresa6 + empresa7 + empresa8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                  SizedBox( height: 5),
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
                              Text('Se tienen los registros de marcas y patentes'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    empresa8 = rating;
                                    totalEmpresa = empresa1 + empresa2 + empresa3 + empresa4 + empresa5 + empresa6 + empresa7 + empresa8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                  Text('2. Laboral'),
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
                              Text('Contrato de trabajo'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    laboral1 = rating;
                                    totalLaboral = laboral1 + laboral2 + laboral3 + laboral4 + laboral5 + laboral6 + laboral7 + laboral8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                              Text('Reglamento interior'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    laboral2 = rating;
                                    totalLaboral = laboral1 + laboral2 + laboral3 + laboral4 + laboral5 + laboral6 + laboral7 + laboral8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
                                  });
                                },
                                itemCount: 3,
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
                              Text('Factores de riesgo'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    laboral3 = rating;
                                    totalLaboral = laboral1 + laboral2 + laboral3 + laboral4 + laboral5 + laboral6 + laboral7 + laboral8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
                                  });
                                },
                                itemCount: 5,
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
                              Flexible(child: Text('¿El patrón conoce obligaciones y prohibiciones?')),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    laboral4 = rating;
                                    totalLaboral = laboral1 + laboral2 + laboral3 + laboral4 + laboral5 + laboral6 + laboral7 + laboral8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
                                  });
                                },
                                itemCount: 3,
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
                              Text('Se tiene las comisiones'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    laboral5 = rating;
                                    totalLaboral = laboral1 + laboral2 + laboral3 + laboral4 + laboral5 + laboral6 + laboral7 + laboral8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
                                  });
                                },
                                itemCount: 3,
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
                              Text('Conoce usted acerca de sus trabajadores'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    laboral6 = rating;
                                    totalLaboral = laboral1 + laboral2 + laboral3 + laboral4 + laboral5 + laboral6 + laboral7 + laboral8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
                                  });
                                },
                                itemCount: 3,
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
                              Text('Sabe como se determina la relación laboral'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    laboral7 = rating;
                                    totalLaboral = laboral1 + laboral2 + laboral3 + laboral4 + laboral5 + laboral6 + laboral7 + laboral8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
                                  });
                                },
                                itemCount: 3,
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
                              Text('Sabe como se realiza una indemnización'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    laboral8 = rating;
                                    totalLaboral = laboral1 + laboral2 + laboral3 + laboral4 + laboral5 + laboral6 + laboral7 + laboral8;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('3. Proveedores'),
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
                              Text('Contratos'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    proveedores1 = rating;
                                    totalProveedor = proveedores1 + proveedores2 + proveedores3;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                              Text('Pagos'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    proveedores2 = rating;
                                    totalProveedor = proveedores1 + proveedores2 + proveedores3;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                              Text('Salud legal'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    proveedores3 = rating;
                                    totalProveedor = proveedores1 + proveedores2 + proveedores3;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('4. Clientes'),
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
                              Text('Contratos'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    clientes1 = rating;
                                    totalClientes = clientes1 + clientes2 + clientes3;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                              Text('Cobranza'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    clientes2 = rating;
                                    totalClientes = clientes1 + clientes2 + clientes3;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
                              Text('Salud legal'),
                              Expanded(child: Container()),
                              RatingBar.builder(
                                itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                                onRatingUpdate: ( rating ) {
                                  setState(() {
                                    clientes3 = rating;
                                    totalClientes = clientes1 + clientes2 + clientes3;
                                    total = totalEmpresa + totalLaboral + totalProveedor + totalClientes;
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
        Text('5. Comentarios Legal Paramétrico', textAlign: TextAlign.left),
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
              Navigator.pushNamed(context, 'subsistema_personal');
            },  
            icon: Icon(Icons.arrow_back)
          ),
        ),
        CircleAvatar(
          backgroundColor: Color(0xff4D5BA6),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'subsistema_finanzas');
            },  
            icon: Icon(Icons.arrow_forward)
          ),
        ),
      ],
    );
  }
}