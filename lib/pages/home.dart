import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bookstore_app/widgets/book_banner.dart';
import 'package:bookstore_app/widgets/genre_menu.dart';
import 'package:bookstore_app/style.dart';
import 'package:bookstore_app/widgets/avatar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      // padding: EdgeInsets.all(24.0),
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: 215,
                child: Text(
                  'Welcome back, Monka!',
                  style: GoogleFonts.playfairDisplay(
                    shadows: [
                      const Shadow(
                        color: Colors.black12,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      )
                    ],
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 31.25,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text.rich(
                const TextSpan(children: [
                  TextSpan(text: "We're glad to see you just "),
                  TextSpan(
                      text: '16 days ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text:
                        "after your last visit and can't wait to help you find your next page turner!",
                  )
                ]),
                style: bodyLarge,
              ),
              const SizedBox(
                height: 52,
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                "Popular List",
                style: h3,
              ),
            ),
            SizedBox(
              height: 128,
              width: double.infinity,
              child: ListView(
                padding: const EdgeInsets.only(left: 12),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 216,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/img/popularList1-bg.png',
                          width: 216,
                          height: 128,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/img/ice-cream.png',
                                width: 40,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Top 10',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                              Text(
                                'Summer Ficton',
                                style: GoogleFonts.playfairDisplay(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 216,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/img/popularList2-bg.png',
                          width: 216,
                          height: 128,
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '25',
                                style: GoogleFonts.playfairDisplay(
                                  height: 1,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 45,
                                  foreground: Paint()
                                    ..shader = linearGradient[0],
                                ),
                              ),
                              Text(
                                "if you're",
                                style: GoogleFonts.playfairDisplay(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: const Color(0xffD96F6E)),
                              ),
                              Text(
                                '25',
                                style: GoogleFonts.playfairDisplay(
                                  height: 1,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 45,
                                  foreground: Paint()
                                    ..shader = linearGradient[0],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                "Top 10 Authors",
                style: h3,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                padding: const EdgeInsets.only(left: 18),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  Avatar(
                    image: "victoria-edwards.jpg",
                    nickname: "Victoria Edwards",
                  ),
                  Avatar(
                    image: "connie-lane.jpg",
                    nickname: "Connie Lane",
                  ),
                  Avatar(
                    image: "wade-richards.jpg",
                    nickname: "Wade Richards",
                  ),
                  Avatar(
                    image: "mitchell-cooper.jpg",
                    nickname: "Mitchell Cooper",
                  ),
                  Avatar(
                    image: "irma-bell.jpg",
                    nickname: "Irma Bell",
                  ),
                  Avatar(
                    image: "darlene-steward.jpg",
                    nickname: "Darlene Steward",
                  ),
                  Avatar(
                    image: "jorge-watson.jpg",
                    nickname: "Jorge Watson",
                  ),
                  Avatar(
                    image: "annette-sibaya.jpg",
                    nickname: "Annette Sibaya",
                  ),
                  Avatar(
                    image: "max-murphy.jpg",
                    nickname: "Max Murphy",
                  ),
                  Avatar(
                    image: "gregory-fisher.jpg",
                    nickname: "Gregory Fisher",
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                "Latest Arrivals",
                style: h3,
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
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Popular Genres",
                style: h3,
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 10,
                  children: [
                    Genre(
                        icons: "icons-book-shelf.png",
                        genreName: "General Fiction"),
                    Genre(icons: "icons-detective.png", genreName: "Crime"),
                    Genre(icons: "icons-knife.png", genreName: "Thriller"),
                    Genre(
                        icons: "icons-heart-outline.png", genreName: "Romance"),
                    Genre(icons: "icons-geography.png", genreName: "Travel"),
                    Genre(
                        icons: "icons-tennis-racquet.png", genreName: "Sports"),
                    Genre(
                        icons: "icons-physics.png",
                        genreName: "Science Fiction"),
                    Genre(icons: "icons-witch.png", genreName: "Fantasy"),
                    Genre(icons: "icons-couple.png", genreName: "Young Adult"),
                    Genre(
                        icons: "icons-children.png",
                        genreName: "Children's Books"),
                    Genre(icons: "icons-book.png", genreName: "Education"),
                    Genre(icons: "icons-leaf.png", genreName: "Nature"),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
