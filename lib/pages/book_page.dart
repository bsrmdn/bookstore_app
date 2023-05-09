import 'package:bookstore_app/widgets/social_button.dart';
import 'package:flutter/material.dart';
import 'package:bookstore_app/style.dart';
import 'package:bookstore_app/widgets/genre_tag.dart';
import 'package:bookstore_app/widgets/book_banner.dart';
import 'package:google_fonts/google_fonts.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        const SizedBox(
          height: 24,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
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
                child: Image.asset(
                  "assets/img/books/conversations-with-friends.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Conversations with Friends",
                style: h2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  "Sally Rooney",
                  style: bodyLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text.rich(
                  const TextSpan(
                      text: "Paperback  |  2nd Edition",
                      style: TextStyle(color: Color(0xff828282))),
                  style: bodySmall,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Rp. 10.000",
                style: h2,
              ),
              const SizedBox(
                height: 8,
              ),
              Text.rich(
                const TextSpan(
                    text:
                        "A blurb about the book goes here. A few sentences that are nice and easy to read. Like one that's enticing... ",
                    children: [
                      TextSpan(
                          text: "read more",
                          style: TextStyle(color: Color(0xff53889D)))
                    ]),
                style: bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 22,
        ),
        Center(
          child: Column(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffD96F6E),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    maximumSize: const Size(300, 40),
                    fixedSize: const Size(300, 40),
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: Text(
                    "ADD TO CART",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 3),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffF3A492),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    maximumSize: const Size(300, 40),
                    fixedSize: const Size(300, 40),
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: Text(
                    "WISHLIST",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 3),
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Column(
          children: [
            Text.rich(
              const TextSpan(
                  text: "Publisher: Faber & Faber",
                  style: TextStyle(color: Color(0xff828282))),
              style: bodySmall,
            ),
            Text.rich(
              const TextSpan(
                  text: "Date Published: 1 March 2018",
                  style: TextStyle(color: Color(0xff828282))),
              style: bodySmall,
            ),
            Text.rich(
              const TextSpan(
                  text: "ISBN13: 9780571333134",
                  style: TextStyle(color: Color(0xff828282))),
              style: bodySmall,
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Column(
          children: [
            Text(
              "Genres:",
              style: h6Montserrat,
            ),
            const SizedBox(
              height: 8,
            ),
            Wrap(
              spacing: 8,
              children: [
                GenreTag(gradientOption: 3, genreName: "Contemporary"),
                GenreTag(gradientOption: 2, genreName: "General Fiction"),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        Column(
          children: [
            Text(
              "Share this book",
              style: h6Montserrat,
            ),
            SizedBox(
              height: 9,
            ),
            Wrap(
              spacing: -8,
              children: [
                SocialButton(
                    icon: Icon(
                  Icons.facebook,
                )),
                SocialButton(
                    icon: Image.asset(
                  "assets/img/icons/social/ig.png",
                )),
                SocialButton(
                    icon: Image.asset(
                  "assets/img/icons/social/twitter.png",
                )),
                SocialButton(
                    icon: Icon(
                  Icons.mail_outline,
                )),
                SocialButton(
                    icon: Icon(
                  Icons.link,
                )),
              ],
            )
          ],
        ),
        SizedBox(
          height: 32,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                "Similar Publications:",
                style: h3,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 350,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: [
                  BookBanner(
                    image: "promising-young-women.png",
                    bookName: "Promising Young Women",
                    authorName: "Caroline O'Donoghue",
                    price: 12.90,
                    showPrice: true,
                  ),
                  BookBanner(
                    image: "careers-for-women.png",
                    bookName: "Careers for Women",
                    authorName: "Joanna Scott",
                    price: 69,
                    showPrice: true,
                  ),
                  BookBanner(
                    image: "inside-these-walls.png",
                    bookName: "Inside these Walls",
                    authorName: "Rebecca Coleman",
                    price: 212,
                    showPrice: true,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
