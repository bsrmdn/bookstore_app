import 'package:flutter/material.dart';
import 'package:bookstore_app/style.dart';
import 'package:bookstore_app/widgets/genre_tag.dart';
import 'package:bookstore_app/widgets/book_banner.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  String avatars = "assets/img/avatars/";
  String books = "assets/img/books/";

  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        const SizedBox(
          height: 40,
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black26,
              radius: 64.5,
              child: CircleAvatar(
                backgroundColor: Colors.black26,
                backgroundImage: AssetImage("${avatars}default.jpg"),
                foregroundImage: AssetImage("${avatars}monka.jpeg"),
                radius: 64,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Monka",
              style: h2,
            ),
            const SizedBox(
              height: 8,
            ),
            Text.rich(
              const TextSpan(
                  text: "CENTER JAVA, INDONESIA",
                  style: TextStyle(color: Color(0xff828282), letterSpacing: 2)),
              style: bodySmall,
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Following",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: const Color(0xff4F4F4F),
                      ),
                    ),
                    Text(
                      "6,9k",
                      style: h5Montserrat,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Followers",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: const Color(0xff4F4F4F),
                      ),
                    ),
                    Text(
                      "212k",
                      style: h5Montserrat,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 48,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Favorite Genres",
                style: h6Montserrat,
              ),
              const SizedBox(
                height: 8,
              ),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  GenreTag(gradientOption: 1, genreName: "African"),
                  GenreTag(gradientOption: 4, genreName: "Classics"),
                  GenreTag(gradientOption: 3, genreName: "Contemporary"),
                  GenreTag(gradientOption: 3, genreName: "Feminst Literature"),
                  GenreTag(gradientOption: 2, genreName: "Memoirs"),
                  GenreTag(
                      gradientOption: 5, genreName: "Psychological Thrillers"),
                  GenreTag(gradientOption: 1, genreName: "Acumalaka"),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 48,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text.rich(
                TextSpan(text: "Purchased Books ", children: [
                  TextSpan(children: const [
                    TextSpan(
                        text: "7", style: TextStyle(color: Color(0xff53889D)))
                  ], style: bodySmall)
                ]),
                style: h6Montserrat,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 300,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: [
                  BookBanner(
                    image: "little-fires-everwhere.png",
                    bookName: "Little Fires Everywhere",
                    authorName: "Celeste Ng",
                  ),
                  BookBanner(
                    image: "all-the-pretty-horses.png",
                    bookName: "All the Pretty Horses",
                    authorName: "Cormac McCarthy",
                  ),
                  BookBanner(
                    image: "the-handmaid's-tales.png",
                    bookName: "The Handmaid's Tale",
                    authorName: "Margaret Atwood",
                  ),
                  BookBanner(
                    image: "conversations-with-friends.png",
                    bookName: "Conversations with Friends",
                    authorName: "Sally Rooney",
                    price: 12.90,
                  ),
                  BookBanner(
                    image: "the-world-doesn't-require.png",
                    bookName: "The world doesn't require you",
                    authorName: "Rion Amilcar Scott",
                  ),
                  BookBanner(
                    image: "the-last-widow.png",
                    bookName: "The last widow",
                    authorName: "Karin Slaughter",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Text("View all Purchased Books >",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: const Color(0xffd96f6e),
                    decoration: TextDecoration.underline,
                  )),
            )
          ],
        ),
        const SizedBox(
          height: 48,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text.rich(
                TextSpan(text: "Wishlist ", children: [
                  TextSpan(children: const [
                    TextSpan(
                        text: "12", style: TextStyle(color: Color(0xff53889D)))
                  ], style: bodySmall)
                ]),
                style: h6Montserrat,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 340,
              child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      runSpacing: 8,
                      spacing: 8,
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
                          child: Image.asset(
                            "${books}the-world-doesn't-require.png",
                            width: 104,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(78, 55, 55, 51),
                                  blurRadius: 5,
                                  offset: Offset(1, 1))
                            ],
                          ),
                          child: Image.asset(
                            "${books}furiously-happy.png",
                            scale: 4,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(78, 55, 55, 51),
                                  blurRadius: 5,
                                  offset: Offset(1, 1))
                            ],
                          ),
                          child: Image.asset(
                            "${books}whitehead-underground.png",
                            scale: 4,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(78, 55, 55, 51),
                                  blurRadius: 5,
                                  offset: Offset(1, 1))
                            ],
                          ),
                          child: Image.asset(
                            "${books}where'd-you-go.png",
                            scale: 4,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(78, 55, 55, 51),
                                  blurRadius: 5,
                                  offset: Offset(1, 1))
                            ],
                          ),
                          child: Image.asset(
                            "${books}louise.png",
                            scale: 4,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(78, 55, 55, 51),
                                  blurRadius: 5,
                                  offset: Offset(1, 1))
                            ],
                          ),
                          child: Image.asset(
                            "${books}educated.png",
                            scale: 4,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(78, 55, 55, 51),
                                  blurRadius: 5,
                                  offset: Offset(1, 1))
                            ],
                          ),
                          child: Image.asset(
                            "${books}the-world-doesn't-require.png",
                            width: 104,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(78, 55, 55, 51),
                                  blurRadius: 5,
                                  offset: Offset(1, 1))
                            ],
                          ),
                          child: Image.asset(
                            "${books}furiously-happy.png",
                            scale: 4,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(78, 55, 55, 51),
                                  blurRadius: 5,
                                  offset: Offset(1, 1))
                            ],
                          ),
                          child: Image.asset(
                            "${books}whitehead-underground.png",
                            scale: 4,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(78, 55, 55, 51),
                                  blurRadius: 5,
                                  offset: Offset(1, 1))
                            ],
                          ),
                          child: Image.asset(
                            "${books}where'd-you-go.png",
                            scale: 4,
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Text("View all Wishlist Books >",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: const Color(0xffd96f6e),
                    decoration: TextDecoration.underline,
                  )),
            )
          ],
        ),
        const SizedBox(
          height: 48,
        )
      ],
    );
  }
}
