import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//Rutas
import 'src/routes/routes.dart';

void main() => runApp(MyApp());
var aeNombre;
var aeDireccion ;
var aeTelefono;
var aeRfc;
var aeDomicilio;
var aeDominio;
var aeAnos;
var aePersonaF;
var aePersonaM;
var aeRegistrada;
var aeEstatusFiscal;
var aeOperativos;
var aeAdministrativos;
var aeOtros;
var aeTotal;
var aeComentarios;
var aeDiarias;
var aeSemanales ;
var aeMensuales;
var aeTerreno;
var aeRegional1;
var aeInternacional1;
var aeBienes ;
var aeOtros2;
var aeLocal;
var aeRegional;
var aeInternacional;
var aeCorto ;
var aeLargo ;
var aeComentarios2;
//variables encuesta 2
var agNombre;
var agDireccion;
var agTelefono;
var agCiudad ;
var agLugar ;
var agEdad;
var agEstado ;
var agOcupacion;
var agEscolaridad;
var agEstadoSalud;
var agComentarios;
var agNombresP;
var agpOrigen;
var agpViven;
var agpLugar ;
var agpEdad ;
var agpEstado ;
var agpOcupacion;
var agpEscolaridad;
var agpEstado2;
var agpComentarios;
var agNombres;
var agEdades ;
var agOcupaciones;
var agLugar2;
var agNombre3;
var agOrigen;
var agVive;
var agLugar3;
var agEdad2;
var agEstado2;
var agOcupacion2;
var agEscolaridad2;
var agComentarios2;
var agNombres3;
var agOriginarios ;
var agViven;
var agLugar4;
var agEdad3;
var agEscolaridad3;
var agEstado3;
var agOcupacion3;
var agComentarios3;
var agNombres4;
var agEdades2;
var agOcupaciones2;
var agLugar5;
var nfNombre;
var agcasados;
var agSituacion;
var agnhijos;
var aghedad;
var agheocu;
var aghesta;
var aghesc;
var aghsal;
var agHobbies;
var agComentarios4;
var agProfesionales;
var agAfectivas;
var agFisicas;
var agComentarios5;
var agDia;
var agSemana;
var agMes;
var agAno;
var agComentarios6;
var agejecutivo;
// nueva familia

var nfNombre2 ;
var nfPuesto ="";
var nfRelacion ;
var nfTipo= "moral";
var nfFrecuencia= 'Compromiso explicito';
var nfTipo2 = 'Afectiva';
var bandera = true;
var bandera2 = true;
double totalsp = 0.0;
double totalspe = 0.0;
double totalsm = 0.0;
double totalsl = 0.0;
double totalsf = 0.0;

double materiales1 = 0.0;
double materiales2 = 0.0;
double materiales3 = 0.0;
double materiales4 = 0.0;
double materiales5 = 0.0;
double materiales6 = 0.0;
double materiales7 = 0.0;
double materiales8 = 0.0;
double ubicacion1 = 0.0;
double ubicacion2 = 0.0;
double ubicacion3 = 0.0;
double ubicacion4 = 0.0;
double ubicacion5 = 0.0;
double lugar1 = 0.0;
double lugar2 = 0.0;
double lugar3 = 0.0;
double lugar4 = 0.0;
double lugar5 = 0.0;
double lugar6 = 0.0;
double lugar7 = 0.0;
double lugar8 = 0.0;
double lugar9 = 0.0;
double lugar10 = 0.0;
double lugar11 = 0.0;
double lugar12 = 0.0;
double lugar13 = 0.0;
double lugar14 = 0.0;
double procedimiento1 = 0.0;
double procedimiento2 = 0.0;
double procedimiento3 = 0.0;
double procedimiento4 = 0.0;
double procedimiento5 = 0.0;
double procedimiento6 = 0.0;
double procedimiento7 = 0.0;
double procedimiento8 = 0.0;
double procedimiento9 = 0.0;
double procedimiento10 = 0.0;
double procedimiento11 = 0.0;
double procedimiento12 = 0.0;
double maquinaria1 = 0.0;
double maquinaria2 = 0.0;
double maquinaria3 = 0.0;
double calidad1 = 0.0;
double calidad2 = 0.0;
double calidad3 = 0.0;
double reportes1 = 0.0;
double reportes2 = 0.0;
double reportes3 = 0.0;
double reportes4 = 0.0;
double reportes5 = 0.0;
var spComentarios;

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GODARES',
      routes: getRoutes()
    );
  }
}