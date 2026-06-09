import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3
    ), () {
      context.go('/home_page');
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(

        width: double.infinity,

        decoration: const BoxDecoration(

          gradient: LinearGradient(

            begin: Alignment.topLeft,
            end: Alignment.bottomRight,

            colors: [

              Color(0xff1E3C72),
              Color(0xff2A5298),

            ],

          ),

        ),

        child: Stack(

          children: [

            Positioned(
              top: -80,
              right: -60,

              child: Container(
                width: 220,
                height: 220,

                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.08),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            Positioned(
              bottom: -100,
              left: -70,

              child: Container(
                width: 260,
                height: 260,

                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.05),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            Center(

              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Container(

                    padding: const EdgeInsets.all(25),

                    decoration: BoxDecoration(

                      color: Colors.white,

                      borderRadius: BorderRadius.circular(30),

                      boxShadow: [

                        BoxShadow(
                          color: Colors.black.withOpacity(.15),
                          blurRadius: 20,
                        )

                      ],

                    ),

                    child: const Icon(
                      Icons.point_of_sale,
                      size: 80,
                      color: Color(0xff1E3C72),
                    ),

                  ),

                  const SizedBox(height: 30),

                  const Text(

                    "Billing App",

                    style: TextStyle(

                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,

                    ),

                  ),

                  const SizedBox(height: 10),

                  Text(

                    "Smart Billing & Inventory",

                    style: TextStyle(

                      color: Colors.white.withOpacity(.85),
                      fontSize: 16,

                    ),

                  ),

                  const SizedBox(height: 45),

                  const SizedBox(

                    width: 35,
                    height: 35,

                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      color: Colors.white,
                    ),

                  ),

                ],

              ),

            ),

            Positioned(

              bottom: 30,
              left: 0,
              right: 0,

              child: Center(

                child: Text(

                  "Powered by Shaurya webtech solutions",

                  style: TextStyle(
                    color: Colors.white.withOpacity(.7),
                    fontSize: 16,
                  ),

                ),

              ),

            )

          ],

        ),

      ),

    );
  }
}