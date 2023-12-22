// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttercourse/auth/login.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("settinggg");
                },
                icon: Icon(Icons.settings_applications_sharp)),
          ],
        ),
        body: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image.asset(
                "imges/girl 3[74].jpg",
                width: 100,
                height: 100,
              ),
            ),
            Text(
              userData!.username.toString(),
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.only(left: 10),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 230, 226, 226),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset("imges/Group[87].png"),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed("editprof");
                                },
                                child: Text(
                                  "Edit profile",
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("imges/Group[89].png"),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Notifications",
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "imges/766078.png",
                                  width: 20,
                                  height: 20,
                                ),
                                //IconButton(onPressed: () {}, icon: Icon(Icons.visibility)),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Visibility:Online",
                                      style: TextStyle(color: Colors.black),
                                    ))
                              ],
                            ),
                            Text(
                              "change",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("imges/Group[88].png"),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed("language");
                                    },
                                    child: Text(
                                      "Language",
                                      style: TextStyle(color: Colors.black),
                                    ))
                              ],
                            ),
                            Text(
                              "English",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 230, 226, 226),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("imges/Group[90].png"),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "My Qr code",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Image.asset(
                            "imges/Profile QR code[86].png",
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset("imges/icon[91].png"),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "share",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
