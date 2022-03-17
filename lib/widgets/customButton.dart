import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customButton extends StatelessWidget {
  const customButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('PEGAR MEU CAFÉ', style: TextStyle(fontSize: 18)),
          ),
          Icon(
            Icons.navigate_next,
          ),
        ],
      ),
      style: TextButton.styleFrom(
        primary: Colors.white,
        side: BorderSide(
          width: 3,
          color: Color(0xFF8257E5),
        ),
      ),
      onPressed: () {},
    );
  }
}
