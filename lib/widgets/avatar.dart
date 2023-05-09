import 'package:flutter/material.dart';
import 'package:bookstore_app/style.dart';

class Avatar extends StatelessWidget {
  String image;
  String nickname;

  Avatar({
    super.key,
    this.image = "",
    required this.nickname,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.center,
      width: 50,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.black26,
            radius: 24.5,
            child: CircleAvatar(
              backgroundColor: Colors.black26,
              backgroundImage:
                  const AssetImage("assets/img/avatars/default.jpg"),
              foregroundImage: image != ""
                  ? AssetImage("assets/img/avatars/$image")
                  : const AssetImage("assets/img/avatars/default.jpg"),
              radius: 24,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            nickname,
            style: bodySmall,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
