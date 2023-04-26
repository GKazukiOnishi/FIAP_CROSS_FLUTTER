import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override //componente AspectRatio -> mexer na proporção
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //para colocar widget em cima de widget
        children: [
          __containerPrincipal(),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "images/logo.png",
                  width: 72,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.home,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.searchengin,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

__containerPrincipal() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("images/filmes.png"),
        fit: BoxFit.cover,
      ),
    ),
  );
  // Container(
  //   width: 100,
  //   height: 100,
  //   color: Colors.red,
  // ),
}
