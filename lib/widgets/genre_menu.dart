import 'package:flutter/material.dart';
import 'package:bookstore_app/style.dart';

class Genre extends StatelessWidget {
  String icons;
  String genreName;

  Genre({
    super.key,
    required this.icons,
    required this.genreName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 76,
      child: Column(
        children: [
          Container(
            width: 76,
            height: 76,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xff4e373733),
                    blurRadius: 5,
                    spreadRadius: -3,
                    offset: Offset(1, 1),
                    blurStyle: BlurStyle.outer)
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img/icons/$icons",
                  width: 32,
                  height: 32,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              genreName,
              textAlign: TextAlign.center,
              style: bodySmall,
            ),
          )
        ],
      ),
    );
  }
}
