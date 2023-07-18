import 'package:flutter/material.dart';
import 'package:instagram/screens/logins/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Image.asset(
              "assets/insta2.png",
              height: 96,
            ),
          ),
          SizedBox(
            height: 240,
          ),
          Text(
            "from",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          Image.asset(
            "assets/meta.png",
            height: 40,
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
