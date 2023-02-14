// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, unnecessary_import, implementation_imports

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  Container(
                    width: 300,
                    height: 50,
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Colors.grey,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFormField(
                        cursorColor: Colors.grey,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: ' Search',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.greenAccent,
                    ),
                    child: const Icon(
                      Icons.control_camera,
                    ),
                  ),
                ],
              ),
              Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(24, 0, 0, 0),
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 10, right: 20),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Lessons of Tutoring >",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              CardProfile(),
              CardProfile(),
              CardProfile(),
              CardProfile(),
              CardProfile(),
              SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}

class CardProfile extends StatelessWidget {
  const CardProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.all(20),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), boxShadow: [
        BoxShadow(
          color: Color.fromARGB(22, 215, 215, 215),
          offset: const Offset(
            5.0,
            5.0,
          ),
          blurRadius: 10.0,
          spreadRadius: 2.0,
        ), //BoxShadow
        BoxShadow(
          color: Colors.white,
          offset: const Offset(0.0, 0.0),
          blurRadius: 0.0,
          spreadRadius: 0.0,
        ), //BoxShadow
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              // color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              border: Border.all(
                width: 1,
                style: BorderStyle.solid,
                color: Colors.grey,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                "https://arts.mojarto.com/productImages/MA275877/primary/MA275877.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "John Smith",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  // wordSpacing: 0.5,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Computer",
                style: TextStyle(
                  fontSize: 10,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          SizedBox(width: 60),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("\$ 254/h"),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.greenAccent,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "4.7",
                    style: TextStyle(
                      color: Color.fromARGB(250, 0, 157, 94),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
