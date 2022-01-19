import 'package:banca_finanzas/src/widgets/input_decoration.dart';
import 'package:banca_finanzas/src/widgets/number_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SubsistemProduccionSreen extends StatelessWidget {
  const SubsistemProduccionSreen({Key? key}) : super(key: key);
  

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

              NumberStars( text: 'Producción: 85'),
              SizedBox(height: 10),
              _Materiales(),
              SizedBox(height: 10),
              _Ubicacion(),
              SizedBox(height: 10),
              _Lugar(),
              SizedBox(height: 10),
              _Maquinaria(),
              SizedBox(height: 10),
              _Calidad(),
              SizedBox(height: 10),
              _Reportes(),
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

class _Materiales extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Text('Estandarización'),
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
                    Text('Trabajabilidad'),
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
                    Text('Disponibilidad'),
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
                    Text('Tiempo de entregas'),
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
                    Text('Precio'),
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
class _Ubicacion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Text('Mano de obra'),
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
                    Text('Clientes'),
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
                    Text('Medio ambiente'),
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
                    Text('Económico'),
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

class _Lugar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Text('Espacion'),
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
                    Text('Luz'),
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
                    Text('Ruido'),
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
                    Text('Colores'),
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
                    Text('Ventilación'),
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
                    Text('Instalaciones sanitarias'),
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
                    Text('Lockers'),
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
                    Text('Alimentos'),
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
                    Text('Por taller'),
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
                    Text('Por linea'),
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

class _Maquinaria extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Text('Suficiente'),
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
                    Text('Mantenimiento'),
                    Expanded(child: Container()),
                    RatingBar.builder(
                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                      onRatingUpdate: (rating) {},
                      itemSize: 25,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _Calidad extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Text('¿Se hacen mejoras a procesos?'),
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
                    Text('¿Se actualiza la tecnología?'),
                    Expanded(child: Container()),
                    RatingBar.builder(
                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                      onRatingUpdate: (rating) {},
                      itemSize: 25,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
class _Reportes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Text('Costo de los materiales'),
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
                    Text('Inventarios de los materiales'),
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
                    Text('Desperdicios'),
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
                    Text('Rechazos de los productos'),
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
        SizedBox( height: 10),
        Text('Forma'),
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
              SizedBox(height: 5),
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
              SizedBox(height: 5),
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