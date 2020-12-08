import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  final icons = [
    Icons.airplanemode_active,
    Icons.business,
    Icons.photo_camera,
    Icons.directions_bus,
  ];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular((50)),
                    color: Colors.blue,
                    image: DecorationImage(
                      image: AssetImage('assets/image08.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Icon(
                  Icons.more_vert,
                  size: 30,
                  color: Color(0xfff36f7c),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 60),
            child: Text(
              'Discover \nWorld with us!',
              style: GoogleFonts.amiri(
                height: 1.2,
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xffeeeeee),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffeeeeee),
                    offset: Offset(0.0, 4.0),
                    blurRadius: 10,
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search something',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 80,
                    width: 58,
                    decoration: BoxDecoration(
                      color: Color(0xfff36f7c),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }
}
