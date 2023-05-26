import 'package:flutter/material.dart';
import 'package:bookstore_app/style.dart';
import 'package:bookstore_app/pages/book_page.dart';

class BookBanner extends StatelessWidget {
  String tag;
  String bookImg;
  String bookName;
  String authorName;
  double price;
  bool showPrice;

  BookBanner({
    super.key,
    required this.tag,
    this.bookImg = "",
    required this.bookName,
    required this.authorName,
    this.price = 0,
    this.showPrice = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            BookPage(tag, price, bookImg, bookName, authorName),
      )),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: tag + bookImg,
              child: Container(
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
                child: bookImg != ""
                    ? Image.asset(
                        "assets/img/books/$bookImg",
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        "assets/img/books/default.png",
                        fit: BoxFit.contain,
                      ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            // Hero(
            //   tag: tag + bookName,
            //   child:
            Text(
              bookName,
              style: h6PlayFailDisplay,
            ),
            // ),
            // Hero(
            //   tag: tag + authorName,
            //   child:
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text(
                authorName,
                style: bodySmall,
              ),
            ),
            // ),
            if (price != 0 && showPrice)
              // Hero(
              //   tag: "$tag$price",
              //   child:
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  "Rp.$price",
                  style: priceStyle,
                ),
              ),
            // ),
          ],
        ),
      ),
    );
  }
}
