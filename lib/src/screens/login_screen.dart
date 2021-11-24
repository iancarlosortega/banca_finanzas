import 'package:flutter/material.dart';

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
        child: Container(
          width: size.width * 0.8,
          height: size.height * 0.7,
          color: Colors.black54,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _logo(),
              SizedBox(height: 70.0,),
              _campoUsuario(),
              SizedBox(height: 20.0,),
              _campoPassword(),
              SizedBox(height: 70.0,),
              _botonLogin()
            ],
          ),
        ),
      ) ,
    );
  }

  Widget _logo() {
    return FadeInImage(
      placeholder: AssetImage('assets/jar-loading.gif'), 
      image: AssetImage('assets/logo.png')
    );
  }

  Widget _campoUsuario(){
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 20.0 ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all( 10.0 ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Colors.white, width: 2.0)
          ),
          labelText: 'Usuario',
          suffixIcon: Icon( Icons.person )
        ),
      ),
    );
  }

  Widget _campoPassword(){
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 20.0 ),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.all( 10.0 ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          labelText: 'Contraseña',
          suffixIcon: Icon( Icons.password )
        ),
      ),
    );
  }

  Widget _botonLogin() {
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 100.0 ),
      child: ElevatedButton(
        onPressed: () {}, 
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
}