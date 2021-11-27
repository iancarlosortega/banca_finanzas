import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xff565D82),
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 80,
        child: Padding(
          padding: EdgeInsets.symmetric( horizontal: 20.0 ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon( Icons.home, size: 40.0, color: Colors.white, ),
              Icon( Icons.list_alt_rounded, size: 40.0, color: Colors.white, ),
              SizedBox.shrink(),
              Icon( Icons.search_outlined, size: 40.0, color: Colors.white, ),
              Icon( Icons.person, size: 40.0, color: Colors.white, ),
            ],
          ),
        ),
      ),
    );
  }
}