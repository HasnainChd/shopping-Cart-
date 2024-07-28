import 'package:flutter/material.dart';
import 'package:shoping_cart/Pages/home_pagge.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/images/nikee.png',
                height: 250,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Just Do it',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  textAlign: TextAlign.center,
                  'Brand new sneakers and custom kicks made with premium quality',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  const HomePage()));
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                          child: Text(
                        'Shop Now',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
