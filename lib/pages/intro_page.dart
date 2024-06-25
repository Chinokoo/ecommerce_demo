// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_demo/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Image.asset("lib/images/nikeLogo.png", height: 300),

                //sized box for the spacing in between
                const SizedBox(
                  height: 24,
                ),

                //title
                Text(
                  "Just Do It",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                //sized box for the spacing in between
                const SizedBox(
                  height: 24,
                ),

                // subtitle
                Text(
                  "Brand new Sneakers and Custom kicks made with Premium Quality Material Design",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[700]),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: 24,
                ),

                //button
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage())),
                  child: Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(12)),
                    width: 300,
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
