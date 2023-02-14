// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_demo/const.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.keyboard_arrow_left_rounded,
                      size: 35,
                      color: Colors.grey,
                    ),
                    // const Spacer(),
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    // const Spacer(),
                    Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                width: 130,
                height: 142,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.amber[700],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(20, 108, 108, 108),
                              offset: Offset(
                                0.5,
                                0.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 1.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.star,
                              color: MyColors.activeGreen,
                              size: 16,
                            ),
                            SizedBox(width: 4),
                            Text("4.6"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                "Meghan Lautern",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Welcome to the Page \nLet's Descover knowledges together",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 24),
              Container(
                alignment: Alignment.center,
                width: 200,
                height: 52,
                // color: Colors.amber,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: MyColors.activeGreen,
                ),
                child: const Text(
                  "Edit Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
              InfoWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              "Information",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: const [
                    InfoCard(
                      cardTitle: 'Public School',
                      cardColor: Color(0xFFFF7C55),
                      cardIcon: Icons.school_rounded,
                      cardHeight: 112,
                    ),
                    InfoCard(
                      cardTitle: 'Guitar',
                      cardColor: Color(0xFF64B8F4),
                      cardIcon: Icons.explore_rounded,
                      cardHeight: 156,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: const [
                    InfoCard(
                      cardTitle: 'Middle',
                      cardColor: Color(0xFFA376DB),
                      cardIcon: Icons.emoji_events_rounded,
                      cardHeight: 156,
                    ),
                    InfoCard(
                      cardTitle: '\$ 200/h',
                      cardColor: Color(0xFFFFB526),
                      cardIcon: Icons.attach_money_rounded,
                      cardHeight: 112,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.cardIcon,
    required this.cardTitle,
    required this.cardColor,
    required this.cardHeight,
  });

  final IconData cardIcon;
  final String cardTitle;
  final Color cardColor;
  final double cardHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: cardHeight,
      // color: Colors.red,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              cardIcon,
              color: Colors.white,
              size: 32,
            ),
            Text(
              cardTitle,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                // letterSpacing: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
