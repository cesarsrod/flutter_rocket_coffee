import 'package:flutter/material.dart';
import 'package:flutter_rocket_coffee/widgets/customButton.dart';
import 'package:flutter_svg/svg.dart';

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
        Text('Home'),
        SizedBox(width: 50),
        Text('Menu'),
        SizedBox(width: 50),
        Text('Recompensas'),
        SizedBox(width: 50),
        Text('Gift Card'),
        SizedBox(width: 50),
        Text('Lojas'),
      ],
    );
  }
}
