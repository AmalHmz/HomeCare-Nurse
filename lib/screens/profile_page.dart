import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build (BuildContext context ) {
    return  Scaffold(
      backgroundColor: Colors.white, // Set the background color of the page
      body: Container(
        padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height:30),
        Text(
          '  Profile',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            decoration: TextDecoration.none,
          ), 
        ),
         SizedBox(height: 30),
          ListTile(
            leading: CircleAvatar(radius: 40,
                   backgroundImage: AssetImage("assets/images/girl.jpg"),
                   
                ),
           
            title: Text("Shnini Ilhem",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25, 
            ),
            ),
            subtitle: Text("She/her  "),
          ),
           
      ],
    ),
      ),
  );
}
}