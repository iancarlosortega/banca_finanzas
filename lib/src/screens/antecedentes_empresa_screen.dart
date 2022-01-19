import 'package:flutter/material.dart';
import 'package:banca_finanzas/src/widgets/widgets.dart';


class AntecedentesEmpresaScreen extends StatelessWidget {
  const AntecedentesEmpresaScreen({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {

    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff565D82),
        title: Text('Antecedentes de la Empresa'),
      ),
      body: SingleChildScrollView( 
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          _DatosGenerales(),
          _AntiguedadEmpresa(),
          _EstatusLegal(),
          _EstatusFiscal(),
          _TamanioEmpresa(),
          _CoberturaMercado(),
          _VisionEmpresa(),
          _ComentarioAntecedentes(),
          _Botones(),

        ])
      )
    );  
  }
}
  
class _DatosGenerales extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Datos Generales'),
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
              hintText: 'Dirección',
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
              hintText: 'Teléfono y fax o mail',
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
              hintText: 'R.F.C',
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
              hintText: 'Dominio Fiscal',
            ),
          )
        ],
      ),
    );
  }
}

class _AntiguedadEmpresa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Antigüedad de la empresa'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Años',
            ),
          )
        ],
      ),
    );
  }
}

class _EstatusLegal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Estatus legal'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Persona física',
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
              hintText: 'Persona moral',
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
              hintText: 'No registrada',
            ),
          )
        ],
      ),
    );
  }
}

class _EstatusFiscal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Estatus fiscal'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: '',
            ),
          )
        ],
      ),
    );
  }
}

class _TamanioEmpresa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric( horizontal: 15.0 ),
            child: Titulo(
              titulo: 'Tamaño de la empresa'
            )
          ),
          SizedBox( height: 10 ),
          Subtitulo(subtitulo: 'NÚMERO DE EMPLEADOS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Operativos',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Administrativos',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Otros',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Total',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Comentarios',
                  ),
                )
              ],
            ),
          ),
          Subtitulo(subtitulo: 'VENTAS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Diarias',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Semanales',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Mensuales',
                  ),
                )
              ],
            ),
          ),
          Subtitulo(subtitulo: 'VALOR DE LOS ACTIVOS'),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Terreno',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Regional',
                  ),
                ),
                SizedBox( height: 10 ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xffA4A4A4),
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecorations.loginInputDecoration(
                    hintText: 'Internacional',
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CoberturaMercado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Cobertura del mercado'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Local',
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
              hintText: 'Regional',
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
              hintText: 'Internacional',
            ),
          )
        ],
      ),
    );
  }
}

class _VisionEmpresa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Visión de la empresa'),
          SizedBox( height: 10.0 ),
          TextFormField(
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Corto plazo',
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
              hintText: 'Largo plazo',
            ),
          )
        ],
      ),
    );
  }
}

class _ComentarioAntecedentes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Titulo(titulo: 'Comentario ejecutivo'),
          SizedBox( height: 10.0 ),
          TextFormField(
            maxLines: null,
            keyboardType: TextInputType.multiline,
            cursorColor: Color(0xffA4A4A4),
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecorations.loginInputDecoration(
              hintText: 'Comentarios',
            ),
          ),
          SizedBox( height: 50.0 ),
        ],
      ),
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
              Navigator.pushNamed(context, 'home');
            },  
            icon: Icon(Icons.arrow_back)
          ),
        ),
        CircleAvatar(
          backgroundColor: Color(0xff4D5BA6),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'antecedentes_generales');
            },  
            icon: Icon(Icons.arrow_forward)
          ),
        ),
      ],
    );
  }
}