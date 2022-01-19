import 'package:flutter/material.dart';
import 'package:banca_finanzas/src/screens/antecedentes_empresa_screen.dart';
import 'package:banca_finanzas/src/screens/antecedentes_generales_screen.dart';
import 'package:banca_finanzas/src/screens/familia_empresa_screen.dart';
import 'package:banca_finanzas/src/screens/login_screen.dart';
import 'package:banca_finanzas/src/screens/nueva_familia_screen.dart';
import 'package:banca_finanzas/src/screens/splash_screen.dart';
import 'package:banca_finanzas/src/screens/subsistema_finanzas_screen.dart';
import 'package:banca_finanzas/src/screens/subsistema_mercado_screen.dart';
import 'package:banca_finanzas/src/screens/subsistema_produccion_screen.dart';
import 'package:banca_finanzas/src/screens/subsistema_personal_screen.dart';
import 'package:banca_finanzas/src/screens/subsistema_legal_screen.dart';
import 'package:banca_finanzas/src/screens/plan_mejora_screen.dart';
import 'package:banca_finanzas/src/screens/home_screen.dart';

Map<String, WidgetBuilder> getRoutes() {

  return <String, WidgetBuilder>{
    '/' : (BuildContext context) => SplashSreen(),
    'login' : (BuildContext context) => LoginScreen(),
    'home' : (BuildContext context) => HomeScreen(),
    'antecedentes_empresa' : (BuildContext context) => AntecedentesEmpresaScreen(),
    'antecedentes_generales' : (BuildContext context) => AntecedentesGeneralesScreen(),
    'familia_empresa' : (BuildContext context) => FamiliaEmpresaSreen(),
    'nueva_familia' : (BuildContext context) => NuevaFamiliaScreen(),
    'subsistema_mercado' : (BuildContext context) => SubsistemaMercadoSreen() ,
    'subsistema_produccion' : (BuildContext context) => SubsistemProduccionSreen() ,
    'subsistema_personal' : (BuildContext context) => SubsistemPersonalSreen() ,
    'subsistema_legal' : (BuildContext context) => SubsistemaLegalSreen() ,
    'subsistema_finanzas' : (BuildContext context) => SubsistemaFinanzasSreen() ,
    'plan_mejora' : (BuildContext context) => PlanMejoraScreen(),
  };
}