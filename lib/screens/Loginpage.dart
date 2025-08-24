import 'package:flutter/material.dart';
import 'package:telebirr/screens/home_screen.dart';
import 'package:telebirr/screens/main_screen.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
        backgroundColor: const Color.fromARGB(255, 230, 242, 216),
      ),
      backgroundColor: const Color.fromARGB(255, 230, 242, 216),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "English",
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "Welcome to telebirr SuperApp!",
              style: TextStyle(fontSize: size.width * 0.05, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            Text(
              "All-in-One",
              style: TextStyle(
                fontSize: size.width * 0.045,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "Login",
              style: TextStyle(
                fontSize: size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Mobile Number",
                style: TextStyle(fontSize: size.width * 0.04),
              ),
            ),
            SizedBox(height: 10),
            Form(
              key: _formKey,
              child: TextFormField(
                controller: _phoneController,
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
                  hintText: "Enter Phone Number",
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Phone Number Is Required";
                  }
                  if (value.length < 10) {
                    return "Enter Valid Phone Number";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: size.height * 0.05),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 2, 117, 211),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("Next", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Who Cares",
                    style: TextStyle(color: Colors.lightGreen),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.1),
            const Text(
              "Terms And Conditions",
              style: TextStyle(color: Colors.lightGreen),
            ),
            const SizedBox(height: 10),
            const Text(
              "@2023 Ethio telecom. All rights reserved",
              style: TextStyle(color: Color.fromARGB(255, 160, 160, 160)),
            ),
            const Text(
              "1.0.0 version",
              style: TextStyle(color: Color.fromARGB(255, 160, 160, 160)),
            ),
          ],
        ),
      ),
    );
  }
}
