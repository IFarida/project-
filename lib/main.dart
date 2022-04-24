import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tos Parkoviy',
      theme: ThemeData(
        fontFamily: "Nunito",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //give us total height and with our phone
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 184, 245, 185),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        alignment: Alignment.center,
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 114, 199, 159),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.menu,
                            size: 30, color: Colors.black12) //icon
                        ),
                  ),
                  Text(
                    "Tos Parkoviy",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        icon: Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.black12,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "YYYYY",
                          svgSrc: "assets/icons",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "YYYYY",
                          svgSrc: "assets/icons",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "YYYYY",
                          svgSrc: "assets/icons",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "YYYYY",
                          svgSrc: "assets/icons",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  const CategoryCard({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        //padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  SvgPicture.asset(svgSrc),
                  const Spacer(),
                  Text(
                    "YYYYY",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
