import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              'PEGAR MEU CAFÉ',
            ),
          ),
          Icon(
            Icons.navigate_next,
          ),
        ],
      ),
      style: TextButton.styleFrom(
        maximumSize: Size(200, 50),
        primary: Colors.white,
        side: BorderSide(
          width: 2,
          color: Color(0xFF8257E5),
        ),
      ),
      onPressed: () {},
    );
  }
}
