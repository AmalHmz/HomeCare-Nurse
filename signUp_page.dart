import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care_nurse/utils/config.dart';
import 'package:health_care_nurse/utils/main_layout.dart';

import 'auth_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key});
  @override
  State<SignUpPage> createState() => _SignUpPageState();

}

class _SignUpPageState extends State<SignUpPage> {
  bool passToggle = true ;
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding:EdgeInsets.all(20),
                child: Image.asset('assets/images/signUp.jpg',
                height: 100,
                width: 100,
                ),
              ),
              SizedBox(height: 15),
              Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  hintText: "Enter your full name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                   prefixIconColor: Config.primaryColor,
                ),
              ),
              ),
               Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              child: TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email ",
                  hintText: "Email Address",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                   prefixIconColor: Config.primaryColor,
                ),
              ),
              ),
               Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Phone number ",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                   prefixIconColor: Config.primaryColor,
                ),
              ),
              ),
               Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              child: TextField(
                obscureText: passToggle ? true: false,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                   prefixIconColor: Config.primaryColor,
                  suffixIcon: InkWell(onTap: () {
                    if(passToggle == true){
                      passToggle = false;
                    }else{
                      passToggle = true;
                    }
                    setState(() {});
                  },
                  child: passToggle 
                  ? Icon(CupertinoIcons.eye_slash_fill)
                  : Icon(CupertinoIcons.eye_fill),
                  ), 
                ),
              ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Config.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                         Navigator.push(
                         context,
                         MaterialPageRoute(
                         builder: (context) => MainLayout()
                         
                          ) );
                      },
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                        child: Center(
                          child:  Text(
                            "Create Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                        ),
                    ),
                  ),
                ),

              ),
            
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " Already have an account ?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  TextButton(
                   onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context) => AuthPage(), 
                        )
                      );
                   } ,
                   child: Text(
                    "Log In",
                   ),
                   ),
                ],
              )
             
            ],
            ),
        ),
      ),
    );
  }
}