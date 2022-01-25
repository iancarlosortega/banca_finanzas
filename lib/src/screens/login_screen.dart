import 'package:banca_finanzas/src/providers/login_form_provider.dart';
import 'package:banca_finanzas/src/widgets/input_decoration.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body:  Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo_login.png'),
            fit: BoxFit.cover 
          )
        ),
        child: SingleChildScrollView(
          child: Container(
            width: size.width * 0.8,
            height: size.height * 0.7,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(25.0), 
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _logo(),
                SizedBox(height: 10.0,),
                ChangeNotifierProvider(
                  create: ( _ ) => LoginFormProvider(),
                  child: _LoginForm()
                )
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
class _LoginForm extends StatelessWidget {
  const _LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final loginForm = Provider.of<LoginFormProvider>(context);

    return Form(
      key: loginForm.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          _campoEmail( context ),
          SizedBox( height: 20.0 ),
          _campoPassword( context ),
          SizedBox( height: 40.0 ),
          _botonLogin( context )
        ],
      )
    );
  }

  Widget _botonLogin( context ) {

    final loginForm = Provider.of<LoginFormProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric( horizontal: 100.0 ),
      child: ElevatedButton(
        onPressed: () {

          if( loginForm.isValidForm() ) {
            Navigator.pushNamed(context, 'home');
          } else {
            return;
          }
          
        }, 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('LOGIN'),
            Icon(Icons.arrow_forward_ios_rounded, size: 14.0,)
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: Color(0xffbA1A0DD),
          shape: StadiumBorder()
        ),
      ),
    );
  }

  Widget _campoEmail(context){

    final loginForm = Provider.of<LoginFormProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric( horizontal: 20.0 ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        cursorColor: Color(0xffA4A4A4),
        style: TextStyle(
          color: Colors.black
        ),
        decoration: InputDecorations.loginInputDecoration(
          hintText: 'Correo Electrónico',
          radioBorde: 20.0,
          suffixIcon: Icons.email
        ),
        onChanged: ( value ) => loginForm.email = value,
        validator: ( value ) {
          String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
          RegExp regExp  = new RegExp(pattern);

          return regExp.hasMatch(value ?? '')
                  ? null
                  : 'El valor ingresado no tiene formato de un correo.';
        },
      ),
    );
  }

  Widget _campoPassword(context){

    final loginForm = Provider.of<LoginFormProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric( horizontal: 20.0 ),
      child: TextFormField(
        obscureText: true,
        cursorColor: Color(0xffA4A4A4),
        style: TextStyle(
          color: Colors.black
        ),
        decoration: InputDecorations.loginInputDecoration(
          hintText: 'Contraseña',
          radioBorde: 20.0,
          suffixIcon: Icons.lock
        ),
        onChanged: ( value ) => loginForm.password = value,
        validator: ( value ) {
          if( value != null && value.length >= 6 ) return null;
          return 'La contraseña debe tener mínimo 6 caracteres.';
        },
      ),
    );
  }

}

Widget _logo() {
  return Container(
    padding: EdgeInsets.all(30),
    child: FadeInImage(
      placeholder: AssetImage('assets/jar-loading.gif'), 
      image: AssetImage('assets/logoHD.png')
    ),
  );
}

