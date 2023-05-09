import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  Widget icon;
  SocialButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xff53889D),
        fixedSize: const Size.square(40),
        shadowColor: Colors.transparent,
      ),
      child: SizedBox.square(
        dimension: 25,
        child: icon,
      ),
    );
  }
}
