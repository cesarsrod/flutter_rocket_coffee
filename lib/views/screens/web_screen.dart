import 'package:flutter/material.dart';
import 'package:flutter_rocket_coffee/widgets/web_header.dart';
import 'package:google_fonts/google_fonts.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/blur-1.png'),
                  fit: BoxFit.fill,
                  alignment: Alignment.bottomLeft),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/blur-2.png'),
                  fit: BoxFit.fill,
                  alignment: Alignment.topRight),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 100),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: WebHeader(),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              'Great Coffee',
                              style: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                  fontSize: 100,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Stack(
                              children: [
                                Text(
                                  '<Great Code/>',
                                  style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                      fontSize: 100,
                                      fontWeight: FontWeight.w700,
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 3
                                        ..color = Color(0xFF8257E5),
                                    ),
                                  ),
                                ),
                                Text(
                                  '<Great Code/>',
                                  style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                      fontSize: 100,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Image.asset('assets/rocket-coffee.png'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
