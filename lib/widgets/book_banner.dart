import 'package:flutter/material.dart';
import 'package:bookstore_app/style.dart';

class BookBanner extends StatelessWidget {
  String image;
  String bookName;
  String authorName;
  double price;
  bool showPrice;

  BookBanner({
    super.key,
    this.image = "",
    required this.bookName,
    required this.authorName,
    this.price = 0,
    this.showPrice = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(78, 55, 55, 51),
                    blurRadius: 5,
                    offset: Offset(1, 1))
              ],
            ),
            width: 140,
            height: 216,
            child: image != ""
                ? Image.asset(
                    "assets/img/books/$image",
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    "assets/img/books/default.png",
                    fit: BoxFit.contain,
                  ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            bookName,
            style: h6PlayFailDisplay,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Text(
              authorName,
              style: bodySmall,
            ),
          ),
          if (price != 0 && showPrice)
            (Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text(
                "€$price",
                style: priceStyle,
              ),
            )),
        ],
      ),
    );
  }
}
