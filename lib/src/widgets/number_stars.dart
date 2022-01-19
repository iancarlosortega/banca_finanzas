import 'package:flutter/material.dart';

class NumberStars extends StatelessWidget {

  final String text;

  const NumberStars({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.star,
          color: Colors.white,
          size: 18.0,
        ),
        label: Text(text), 
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xff4D5BA6)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            )
          )
        ),
        onPressed: () {  },
      ),
    );
  }
}