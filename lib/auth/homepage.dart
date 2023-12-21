// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_build_context_synchronously, sort_child_properties_last

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.blue,
          elevation: 10,
          
          title: const Text(
            "Home",
            style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined)),
            IconButton(onPressed: () {Navigator.of(context).pushNamed("setting");}, icon: Icon(Icons.person)),
            IconButton(onPressed: () {Navigator.of(context).pushNamed("settinggg");}, icon: Icon(Icons.settings_applications_sharp)),
          ],
      
          /*actions: [
            IconButton(
              onPressed: ()async {
               await FirebaseAuth.instance.signOut();
               Navigator.of(context).pushReplacementNamed("login");
              },
              icon: Icon(Icons.exit_to_app),
            )
          ],*/
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          width: double.infinity,
         
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 1000,
                height: 100,
                
                child: ElevatedButton(
                  onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset("imges/noun-versus-player-2977044[84].png"),
                        Text(
                      "Start comptition",
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                      ],

                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 11, 243, 243))
                    ),
                    
                    
                    
                    ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: double.infinity,
                height: 100,
                
                child: ElevatedButton(
                  onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset("imges/noun-training-2417115[83].png"),
                        
                        Text(
                      "Start traning",
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),

                      ],
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                       
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 12, 243, 243)),
                      
                    ),
                    
                    ),
              ),

              Container(height: 30,),
              SizedBox(
                width: double.infinity,
                height: 100,
                
                child: ElevatedButton(
                  onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset("imges/noun-competitor-4058571[82].png"),
                        Text(
                      "Existing Competitions ",
                      style: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                      ],

                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 11, 243, 243))
                    ),
                    
                    ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: double.infinity,
                height: 100,
                
                child: ElevatedButton(
                  onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset("imges/noun-competition-4519893[81].png"),

                        Text(
                      "Ranks broud",
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),

                      ],
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 11, 243, 243))
                    ),
                    
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
