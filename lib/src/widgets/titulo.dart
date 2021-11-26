import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {

  final String titulo;

  const Titulo({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(
          bottom: 3,
        ),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
            color: Color(0xff565D82),
            width: 3.0,
          ))
        ),
        child: Text( titulo , style: TextStyle(
          color: Color(0xff565D82),
          fontWeight: FontWeight.w500,
          fontSize: 20
        ))
      ),
    );
  }
}