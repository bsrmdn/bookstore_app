import 'package:bookstore_app/pages/book_page.dart';
import 'package:bookstore_app/pages/home.dart';
import 'package:bookstore_app/pages/no_page.dart';
import 'package:bookstore_app/pages/profile.dart';
import 'package:bookstore_app/style.dart';
import 'package:flutter/material.dart';

void main() => runApp(BookStore());

class BookStore extends StatefulWidget {
  List mainPages = [
    const Home(),
    const NoPage(),
    const NoPage(),
    Profile("", ""),
  ];

  BookStore({super.key});
  // bool goToOtherPage = false;
  // late Widget otherPages;

  @override
  State<BookStore> createState() => _BookStoreState();
}

class _BookStoreState extends State<BookStore> {
  int _selectedIndex = 0;
  List navTitle = ["Home", "Browse", "Wishlist", "Profile"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            backgroundColor: Colors.white,
            elevation: 10.0,
            shadowColor: Color.fromARGB(55, 250, 250, 250),
            title: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                navTitle.elementAt(_selectedIndex),
                style: navTitleStyle,
              ),
            ),
            actions: [
              IconButton(
                visualDensity: const VisualDensity(horizontal: -2.0),
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage('assets/img/search.png'),
                  color: Color(0xff53889D),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage('assets/img/bascket.png'),
                  color: Color(0xff53889D),
                ),
              ),
            ],
          ),
          body: widget.mainPages.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/img/icons/nav/home.png")),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/img/icons/nav/compas.png")),
                label: "browse",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/img/icons/nav/heart.png")),
                label: "wishlist",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/img/icons/nav/user.png")),
                label: "profile",
              ),
            ],
            selectedItemColor: const Color(0xff53889D),
            unselectedItemColor: const Color(0xffBBD1D9),
            showUnselectedLabels: true,
            currentIndex: _selectedIndex,
            onTap: (index) => setState(() {
              _selectedIndex = index;
            }),
          ),
        ));
  }
}

// class BookStore extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Home(),
//     );
//   }
// }
