// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_demo/const.dart';

class DiscoverTab extends StatelessWidget {
  const DiscoverTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // search bar
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        // margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 0.4,
                            style: BorderStyle.solid,
                            color: Colors.grey.shade300,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(18),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextFormField(
                            cursorColor: Colors.grey,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: ' Search',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: MyColors.activeGreen,
                      ),
                      child: const Icon(
                        Icons.control_camera,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              // big card
              Container(
                height: 220,
                margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.network(
                          'https://cdni.iconscout.com/illustration/premium/thumb/study-at-home-2527770-2114673.png',
                        ),
                      ),
                    ),
                    Positioned(
                      top: 16,
                      right: 16,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Lessons of Tutoring',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: MyColors.activeGreen,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 14,
                              color: MyColors.activeGreen,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //  listview list of profile cards
              Container(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding:
                      const EdgeInsets.only(left: 28, right: 28, bottom: 24),
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (conext, index) {
                    return const CardProfile();
                  },
                ),
              ),
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
      margin: const EdgeInsets.only(top: 18),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(22, 215, 215, 215),
            offset: Offset(
              0.0,
              0.0,
            ),
            blurRadius: 2.0,
            spreadRadius: 2.0,
          ), //BoxShadow
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              // color: Colors.amber,
              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
              border: Border.all(
                width: 0.2,
                style: BorderStyle.solid,
                color: Colors.grey,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                "https://arts.mojarto.com/productImages/MA275877/primary/MA275877.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Gin Wallbrick",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  // wordSpacing: 0.5,
                  // letterSpacing: 1,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Spanish",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          const SizedBox(width: 60),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "\$ 254/h",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  // wordSpacing: 0.5,
                  // letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    size: 15,
                    color: MyColors.activeGreen,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "4.7",
                    style: TextStyle(
                      color: MyColors.activeGreen,
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
