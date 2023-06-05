import 'package:flutter/material.dart';
import 'package:health_care_nurse/screens/auth_page.dart';
import 'package:health_care_nurse/screens/signUp_page.dart';
import 'package:health_care_nurse/utils/config.dart';
import 'package:health_care_nurse/utils/main_layout.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: Column(
          children:    [
            SizedBox(height: 15),
            Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed:() {
                Navigator.push(context, MaterialPageRoute(
                 builder: (context) => MainLayout(),
                 ) );
              },
              child: Text('SKIP',
              style: TextStyle(
                color: Config.primaryColor,
                fontSize: 20,
              ),
              ),
            ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset('assets/images/image.jpg',
              height: 300,
              width:300,
              ),
              ),
              SizedBox(height: 10),
              Text("Home Health Care",
              style: TextStyle(
                color: Config.primaryColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
              ),
               SizedBox(height: 10),
              Text("Together" ,  
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                
              ),
              ),
               Text("We will build a healthier community" ,  
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                
              ),
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Config.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                     onTap: (){
                             Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>AuthPage(), 
                               ) );
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                           horizontal: 40),
                           child:Text(
                            "Log In ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                           ),
                    ),
                  ),
                    Material(
                    color: Config.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                     onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>SignUpPage(),
                             ) );
                      },
                      
                      child: Padding(
                        
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                           horizontal: 40),
                           child:Text(
                            "Sign Up ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            
                           ),
                    ),
                  ),
                ],
              )
          ],
        ),

      ),
    );
  }
}