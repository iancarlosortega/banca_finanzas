import 'package:banca_finanzas/src/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      backgroundColor: Color(0xff565D82),
      body: 
      Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width*0.07,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                      "GODARES",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 20,
                        )
                      ),
                      SizedBox(height: 25),
                      CircleAvatar(
                        minRadius: 50,
                        backgroundColor: Color(0xffC4C4C4),
                      ),
                       SizedBox(height: 25),
                      Text(
                      "¡Bienvenido User!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 20,
                        )
                      ),
                      
                    ],
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        
                        Icon(
                            Icons.logout,
                            color: Colors.white,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*0.2,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          SingleChildScrollView(
            child: Container(
              
              height: MediaQuery.of(context).size.height*0.605,
              width: MediaQuery.of(context).size.width*1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only( 
                  topLeft: const Radius.circular(50.0),
                  topRight: const Radius.circular(50.0),
                  ),
                color: Color(0xffF0F0F0),
              ),
              child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  const Text(
                    "Listado de empresas encuestadas",
                    style: TextStyle(
                      color: Color(0xff565D82),
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.5,
                      fontSize: 20,
                    )
                  ),
                ],
              ),
            ),
          ), 
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: !keyboardIsOpen,
        child: FloatingActionButton(
          backgroundColor: Color(0xff565D82),
          onPressed: (){},
          child: Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}