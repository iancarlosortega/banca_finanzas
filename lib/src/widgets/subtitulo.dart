import 'package:flutter/material.dart';

class Subtitulo extends StatelessWidget {

  final String subtitulo;

  const Subtitulo({Key? key, required this.subtitulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( vertical: 10.0 ),
      width: double.infinity,
      color: Color(0xffC8C7FF),
      child: Text(
        subtitulo, 
        style: TextStyle(
          color: Color(0xff565D82),
          fontSize: 17.0
      ), textAlign: TextAlign.center,),
    );
  }
}