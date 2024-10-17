//import 'dart:ffi';

import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  Color buttonColor = const Color(0xff5cecfd); // اللون الأساسي

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/aa0b3482-04fb-430e-b161-7d0e404fd05c.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            bottom: 150,
            left: 70,
            child: Text(
              "Welcome to Quiz App!",
              style: TextStyle(
                color: Color.fromARGB(255, 249, 247, 247),
                fontSize: 25,
                fontFamily: "Gilroy",
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  // تغيير لون الزر عند الضغط
                  buttonColor = Colors.white;
                });

                // انتقال للصفحة التالية
                Navigator.pushNamed(context, "/home");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor, // استخدام اللون المتغير
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Gilroy",
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ),
          )
        ],
      ),
    );
  }
}
