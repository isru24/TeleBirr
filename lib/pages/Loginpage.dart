import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/tele.png",
                width: 100,
                fit: BoxFit.contain,
              ),
              Flexible(
                child: Image.asset(
                  "assets/images/telebirr.png",
                  width: 70,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 230, 245, 229),
      ),
      backgroundColor: Color.fromARGB(255, 230, 245, 229),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 270,
            child: Text(
              'English',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 80,
            left: 55,
            child: Text(
              'Welcome to telebirr SuperApp!',
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
          Positioned(
            top: 125,
            left: 150,
            child: Text(
              'All-in-One',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
          ),
          Positioned(
            top: 165,
            left: 160,
            child: Text(
              'Login',
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
            top: 235,
            left: 50,
            child: Text(
              'Mobile Number',
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 15,
              ),
            ),
          ),
          Positioned(
            top: 270,
            left: 40,
            right: 40,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightGreen),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.lightGreen),
                ),
                hintText: 'Enter phone number',
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
          Positioned(
            top: 350,
            left: 40,
            right: 40,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 2, 117, 211),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text("Next", style: TextStyle(color: Colors.white)),
            ),
          ),
          Positioned(
            top: 420,
            left: 70,
            right: 40,
            child: Text("Don't have an account?"),
          ),
          Positioned(
            top: 420,
            left: 225,
            right: 40,
            child: Text(
              "Who Cares",
              style: TextStyle(color: Colors.lightGreen),
            ),
          ),
          Positioned(
            top: 590,
            left: 120,
            right: 40,
            child: Text(
              "Terms And Conditions",
              style: TextStyle(color: Colors.lightGreen),
            ),
          ),
          Positioned(
            top: 620,
            left: 60,
            right: 40,
            child: Text(
              "@2023 Ethio telecom.All rights reserved",
              style: TextStyle(color: const Color.fromARGB(255, 160, 160, 160)),
            ),
          ),
          Positioned(
            top: 645,
            left: 150,
            right: 40,
            child: Text(
              "1.0.0 version",
              style: TextStyle(color: const Color.fromARGB(255, 160, 160, 160)),
            ),
          ),
        ],
      ),
    );
  }
}
