import 'package:flutter/material.dart';
import 'package:flutter_rocket_coffee/widgets/customButton.dart';
import 'package:flutter_rocket_coffee/widgets/customDrawer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      endDrawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 80,
        elevation: 1,
        shadowColor: Colors.grey,
        title: SvgPicture.asset('assets/logo-mobile.svg'),
        actions: [
          Builder(
            builder: (context) => InkWell(
              onTap: () => Scaffold.of(context).openEndDrawer(),
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SvgPicture.asset(
                  'assets/menu-buguer-open.svg',
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1.008,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/blur-mobile.png',
                ),
                fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 76,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  child: Text(
                    'O café que fará seu código decolar para o próximo nível',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              customButton(),
              SizedBox(
                height: 60,
              ),
              Column(
                children: [
                  Text(
                    'Great Coffee',
                    style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                        fontSize: 40,
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
                            fontSize: 45,
                            fontFamily: "Manrope",
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
                            fontSize: 45,
                            fontFamily: "Manrope",
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                child: Image.asset('assets/rocket-coffee.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
