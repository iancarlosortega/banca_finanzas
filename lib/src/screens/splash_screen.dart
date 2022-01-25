import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SplashSreen extends StatefulWidget {
  const SplashSreen({Key? key}) : super(key: key);

  @override

  _SplashSreenState createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {

  @override

  void initState() {
    super.initState();
    _navigateLogin();
  }

  _navigateLogin() async {
    await Future.delayed(Duration(milliseconds: 1500), (){});
    Navigator.pushNamed(context, 'login');
  }

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();

    return Scaffold(
      body:  Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splash_fondo.png'),
            fit: BoxFit.cover 
          )
        ),
        child: Container(
          margin: EdgeInsets.symmetric( horizontal: 30 ),
          padding: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            borderRadius: BorderRadius.circular(25.0), 
          ),
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: AssetImage('assets/logoHD.png')
          )
        ),
      ) ,
    );
  }
}