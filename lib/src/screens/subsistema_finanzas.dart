import 'package:banca_finanzas/src/widgets/input_decoration.dart';
import 'package:banca_finanzas/src/widgets/number_stars.dart';
import 'package:banca_finanzas/src/widgets/titulo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class subsistema_finanzas extends StatelessWidget {
  const subsistema_finanzas({Key? key}) : super(key: key);
  

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

              NumberStars( text: 'Finanzas: 90'),
              SizedBox(height: 10),
              _historia(),
              SizedBox(height: 10),
              _sistema(),
              SizedBox(height: 10),
              _punto(),
              SizedBox(height: 10),
              contabilidad(),
              SizedBox(height: 10),
              presupuesto(),
              SizedBox(height: 10),
              financiera(),
              SizedBox(height: 10),
              finanzas(),
              SizedBox(height: 10),
              admin(),
              SizedBox(height: 10),
              oficina(),
              SizedBox(height: 10),
              seguros(),
              SizedBox(height: 10),
              reportes(),
              SizedBox(height: 10),
              _Comentarios(),

            ]
          ),
        )
      )
    );  
  }
}

class _historia extends StatelessWidget {

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
class _sistema extends StatelessWidget {
  const _sistema({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Flexible(child: Text('Variables')),
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
        )
      ],
    );
  }
}

class _punto extends StatelessWidget {
  const _punto({Key? key}) : super(key: key);

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

class contabilidad extends StatelessWidget {
  const contabilidad({Key? key}) : super(key: key);

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
class presupuesto extends StatelessWidget {
  const presupuesto({Key? key}) : super(key: key);

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
class oficina extends StatelessWidget {
  const oficina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}


class financiera extends StatelessWidget {
  const financiera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Text('Cada cuanto'),
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
                    Text('Se entienden'),
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
                    Text('Precisos'),
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
                    Text('Se usan'),
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
                    Text('Otra información financiera'),
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
    );
  }
}

class finanzas extends StatelessWidget {
  const finanzas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Flexible(child: Text('Liquidez')),
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
                    Flexible(child: Text('Deuda')),
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
                    Flexible(child: Text('Renta')),
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
    );
  }
}

class seguros extends StatelessWidget {
  const seguros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Flexible(child: Text('Maquinaria')),
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
                    Flexible(child: Text('Edificio')),
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
                    Flexible(child: Text('Equipo')),
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
                    Flexible(child: Text('Gastos médicos')),
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
                    Flexible(child: Text('Vida')),
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
    );
  }
}
class admin extends StatelessWidget {
  const admin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Text('Cuentas por cobrar'),
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
                    Text('Inventarios de productos terminados'),
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
                    Text('Nuevas inversiones'),
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
                    Text('Cuentas por pagar'),
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
                    Text('Aportaciones de seguridad'),
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
                    Text('Contribuciones de mejoras'),
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
                    Text('Contribuciones de mejoras'),
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
    );
  }
}
class reportes extends StatelessWidget {
  const reportes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                        Text('Cuentas por cobrar'),
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
                        Text('Inventarios'),
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
                        Text('Cuentas por pagar'),
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
                        Text('Contribuciones fiscales'),
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
              Navigator.pushNamed(context, 'familia_empresa');
            },  
            icon: Icon(Icons.arrow_back)
          ),
        ),
        CircleAvatar(
          backgroundColor: Color(0xff4D5BA6),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'subsistema_produccion');
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
