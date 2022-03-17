import 'package:flutter/material.dart';
import 'package:flutter_rocket_coffee/widgets/customButton.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WebHeader extends StatelessWidget {
  const WebHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset('assets/logo-desktop.svg'),
        MenuItem(),
        customButton(),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Home',
          style: GoogleFonts.manrope(
            textStyle: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(width: 50),
        Text('Menu',
            style: GoogleFonts.manrope(
              textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            )),
        SizedBox(width: 50),
        Text('Recompensas',
            style: GoogleFonts.manrope(
              textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            )),
        SizedBox(width: 50),
        Text('Gift Card',
            style: GoogleFonts.manrope(
              textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            )),
        SizedBox(width: 50),
        Text('Lojas',
            style: GoogleFonts.manrope(
              textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            )),
      ],
    );
  }
}
