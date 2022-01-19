import 'package:banca_finanzas/src/widgets/input_decoration.dart';
import 'package:banca_finanzas/src/widgets/number_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SubsistemaLegalSreen extends StatelessWidget {
  const SubsistemaLegalSreen({Key? key}) : super(key: key);
  

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

              NumberStars( text: 'Legal: 45'),
              SizedBox(height: 10),
              _Empresa(),
              SizedBox(height: 10),
              _Laboral(),
              SizedBox(height: 10),
              _Proveedores(),
              SizedBox(height: 10),
              _Clientes(),
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

class _Empresa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      onRatingUpdate: (rating) {},
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
                      onRatingUpdate: (rating) {},
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
                      onRatingUpdate: (rating) {},
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
                      onRatingUpdate: (rating) {},
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
                      onRatingUpdate: (rating) {},
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
                      onRatingUpdate: (rating) {},
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
                      onRatingUpdate: (rating) {},
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
class _Laboral extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      onRatingUpdate: (rating) {},
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
                      onRatingUpdate: (rating) {},
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
                      onRatingUpdate: (rating) {},
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
                    Text('¿El patrón conoce obligaciones y prohibiciones?'),
                    Expanded(child: Container()),
                    RatingBar.builder(
                      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,), 
                      onRatingUpdate: (rating) {},
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
                      onRatingUpdate: (rating) {},
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
                      onRatingUpdate: (rating) {},
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
                      onRatingUpdate: (rating) {},
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

class _Proveedores extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Text('Pagos'),
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
                    Text('Salud legal'),
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
      ],
    );
  }
}

class _Clientes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Text('Cobranza'),
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
                    Text('Salud legal'),
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