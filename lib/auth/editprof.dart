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
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(10),
         // margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
               
               
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("first name"),SizedBox(height: 5,),   TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),)],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 150,
                    height: 100,
                    
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Last name"),SizedBox(height: 5,),TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),)],
                        )
                      ],
                    ),
                  ),
          
                ],
              ),
              SizedBox(height: 10,),
              Text("User name "),
              TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
              SizedBox(height: 10,),
              Text("BIO "),
              TextField(decoration: InputDecoration( hintText: "write somthing",border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
              Container(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
               
               
                children: [
                  Container(
                    width:188,
                    
                    

                   
                    
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("college"),SizedBox(height: 5,),
                          Padding(padding:EdgeInsets.all(2),
                          child:DropdownButton<String>(items: [
                            DropdownMenuItem(
                              value: "1",
                              
                              child:Text("information technices")
                              
                              
                              
                              
                               ),
                            DropdownMenuItem(
                              value: "2",
                              
                              child:Text("Engineering")
                              
                              
                              
                              
                               ),
                          ],
                             onChanged: (_value ) =>{
                            print(_value.toString())

                          },
                          hint:Text("information technices"),
                          
                          

                          
                           ),
                          
                          
                   
                        ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width:150,
                    
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Department"),SizedBox(height: 5,),
                          Padding(padding:EdgeInsets.all(2),
                          child:DropdownButton<String>(items: [
                            DropdownMenuItem(
                              value: "1",
                              
                              child:Text("Chimistry")
                              
                              
                              
                              
                               ),
                            DropdownMenuItem(
                              value: "2",
                              
                              child:Text("Mathmematisc")
                              
                              
                              
                              
                               ),
                            DropdownMenuItem(
                              value: "3",
                              
                              child:Text("Physics")
                              
                              
                              
                              
                               ),
                            DropdownMenuItem(
                              value: "4",
                              
                              child:Text("Medical analysis")
                              
                              
                              
                              
                               ),
                            DropdownMenuItem(
                              value: "5",
                              
                              child:Text("Life sincse")
                              
                              
                              
                              
                               ),
                          ],
                             onChanged: (_value ) =>{
                            print(_value.toString())
                        
                          },
                        
                          
                           ),
                          
                          
                                           
                        ),
                          
                          
                          
                          ],
                        )
                      ],
                    ),
                  ),
          
                ],
              ),
              Container(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
               
               
                children: [
                  Container(
                    width:188,
                    
                    

                   
                    
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Univarsity acadimy years"),SizedBox(height: 5,),
                          Padding(padding:EdgeInsets.all(2),
                          child:DropdownButton<String>(items: [
                            DropdownMenuItem(
                              value: "1",
                              
                              child:Text("1")
                              
                              
                              
                              
                               ),
                            DropdownMenuItem(
                              value: "2",
                              
                              child:Text("2")
                              
                              
                              
                              
                               ),
                            DropdownMenuItem(
                              value: "3",
                              
                              child:Text("3")
                              
                              
                              
                              
                               ),
                            DropdownMenuItem(
                              value: "4",
                              
                              child:Text("4")
                              
                              
                              
                              
                               ),
                          ],
                             onChanged: (_value ) =>{
                            print(_value.toString())

                          },
                          hint:Text("4"),
                          
                          

                          
                           ),
                          
                          
                   
                        ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width:150,
                    
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Gender"),SizedBox(height: 5,),
                          Padding(padding:EdgeInsets.all(2),
                          child:DropdownButton<String>(items: [
                            DropdownMenuItem(
                              value: "1",
                              
                              child:Text("meal")
                              
                              
                              
                              
                               ),
                            DropdownMenuItem(
                              value: "2",
                              
                              child:Text("femeal")
                              
                              
                              
                              
                               ),
                            
                          ],
                             onChanged: (_value ) =>{
                            print(_value.toString())
                        
                          },
                        
                          
                           ),
                          
                          
                                           
                        ),
                          
                          
                          
                          ],
                        )
                      ],
                    ),
                  ),
          
                ],
              ),


              
              
          
            ],
          ),
        )
        
          
      
        ),
    );
  }
}
