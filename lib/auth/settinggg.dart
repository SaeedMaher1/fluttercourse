// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Settinggg extends StatelessWidget {
  const Settinggg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 226, 226),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 226, 226),
        title:Text(
            "Setting",
            style: TextStyle(fontSize: 30, color: Colors.black,fontWeight: FontWeight.bold),
          ), 
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.account_circle)),
              TextButton(onPressed: (){Navigator.of(context).pushNamed("accountset");}, child: Text("Account Setting",style: TextStyle(color:Colors.black),)),
            ],
          ),
          Row(
            
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.add_alert)),
              TextButton(onPressed: (){}, child: Text("Notification Setting",style: TextStyle(color:Colors.black),)),
            ],
          ),
          Row(
            
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.share)),
              TextButton(onPressed: (){}, child: Text("Share App",style: TextStyle(color:Colors.black),)),
            ],
          ),
          Row(
            
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.star_half)),
              TextButton(onPressed: (){}, child: Text("Rate App",style: TextStyle(color:Colors.black),)),
            ],
          ),
          Row(
            
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.help_outline_sharp)),
              TextButton(onPressed: (){Navigator.of(context).pushNamed("help");}, child: Text("Help",style: TextStyle(color:Colors.black),)),
            ],
          ),
          Text("____________________________________________________"),
          Row(
            
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
              TextButton(onPressed: (){}, child: Text("Log out",style: TextStyle(color:Colors.black),)),
            ],
          ),

          
        
        ],),
      ),
      
    );
  }
}