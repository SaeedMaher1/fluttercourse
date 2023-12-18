// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Editprof extends StatelessWidget {
  const Editprof({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.grey[100],
          title: Text(
            "Edit profile",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text("First name",style: TextStyle(fontSize: 15),),
                  SizedBox(width: 10,),
                  Text("Last name",style: TextStyle(fontSize: 15),),
                  
                 

                  
                   

                ],
                
              ),
              
             
            ],
          )
            
              
          ),
        ),
    );
  }
}
