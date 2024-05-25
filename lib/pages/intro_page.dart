import 'package:commerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          //logo
              Image.asset(
                'lib/images/nike.png',
                height: 250,
                ),
          const SizedBox(height: 70),
          //title
          const Text('Just Do It', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
          ),
          const SizedBox(height: 30,),
          //subtitle
           const Text('Brand New Sneakers And Custom Kicks Made With Premium Quality.',
           style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
           ),
           textAlign: TextAlign.center,
           ),
           const SizedBox(height: 30,),
          //start button
            GestureDetector(
              onTap: () => Navigator.push(
                context, MaterialPageRoute(
                  builder:(context) => const HomePage(),
                  )
                  ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12)
                ),
                padding: const EdgeInsets.all(25),
                child: const Center(
                  child: Text('Shop Now', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),),
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