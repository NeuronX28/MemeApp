import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/o.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Container(
             // color: Colors.black.withOpacity(0.5), // Semi-transparent black background
              padding: EdgeInsets.all(20.0),

              child: SizedBox(
                height: 60,
                child: Text(
                  "sup nigga?",
                  style: TextStyle(color: Colors.white, fontSize: 50,
                    decoration: null,),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
