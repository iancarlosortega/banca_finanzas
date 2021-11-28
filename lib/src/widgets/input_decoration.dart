import 'package:flutter/material.dart';

class InputDecorations {

  static InputDecoration loginInputDecoration({
    required String hintText,
    IconData? suffixIcon,
    double? radioBorde
  }) {
    return InputDecoration(
        contentPadding: EdgeInsets.all( 10.0 ),
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radioBorde ?? 5.0),
          borderSide: BorderSide(
            color: Color(0xffCDCDCD), 
            width: 2.0
          )
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radioBorde ?? 5.0),
          borderSide: BorderSide(
            color: Color(0xffCDCDCD), 
            width: 2.0
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radioBorde ?? 5.0),
          borderSide: BorderSide(
            color: Color(0xff565D82), 
            width: 2.0
          )
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radioBorde ?? 5.0),
          borderSide: BorderSide(
            color: Colors.red,
            width: 2.0
          )
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radioBorde ?? 5.0),
          borderSide: BorderSide(
            color: Colors.red,
            width: 2.0
          )
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xffCDCDCD),
        ),
        suffixIcon: Icon( suffixIcon, color: Color(0xff565D82) ) 
    );
  }

}

class TextFieldWidget extends StatelessWidget {
  
  final String label;

  const TextFieldWidget({
    Key? key, 
    required this.label
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: null,
      keyboardType: TextInputType.multiline,
      cursorColor: Color(0xffA4A4A4),
      style: TextStyle(
        color: Color(0xff5E5E5E)
      ),
      decoration: InputDecoration(
      ),
    );
    
  }
}