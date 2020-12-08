import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_service_app/screens/home_page.dart';

class SplashSreen extends StatefulWidget {
  final Color mainColor = Color(0xfff36f7c);

  @override
  _SplashSreenState createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black54,
          child: Stack(
            children: [
              Container(),
              Positioned(
                bottom: 100,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 80),
                      height: 80,
                      decoration: BoxDecoration(
                          color: widget.mainColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 230,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Enjoy every\n moment with us!',
                    style: GoogleFonts.amiri(
                      height: 1.2,
                      fontWeight: FontWeight.bold,
                      textStyle: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
