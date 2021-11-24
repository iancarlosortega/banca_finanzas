import 'package:banca_finanzas/src/screens/antecedentes_empresa_screen.dart';
import 'package:banca_finanzas/src/screens/antecedentes_generales_screen.dart';
import 'package:banca_finanzas/src/screens/familia_empresa_screen.dart';
import 'package:banca_finanzas/src/screens/login_screen.dart';
import 'package:banca_finanzas/src/screens/splash_screen.dart';
import 'package:banca_finanzas/src/screens/subsistema_mercado.dart';
import 'package:flutter/material.dart';

//Pantallas
import 'package:banca_finanzas/src/screens/home_screen.dart';

Map<String, WidgetBuilder> getRoutes() {

  return <String, WidgetBuilder>{
    '/' : (BuildContext context) => SplashSreen(),
    'login' : (BuildContext context) => LoginScreen(),
    'home' : (BuildContext context) => HomeScreen(),
    'antecedentes' : (BuildContext context) => AntecedentesGeneralesScreen(),
    'antecedentes_empresa' : (BuildContext context) => AntecedentesEmpresaScreen(),
    'subsistema_mercado' : (BuildContext context) => SubsistemaMercadoSreen() ,
    'familia_empresa' : (BuildContext context) => FamiliaEmpresaSreen(),
  };
}