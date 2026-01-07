import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/headerDesktop.dart';
import 'package:my_portfolio/widgets/headerMobile.dart';
import 'package:my_portfolio/widgets/siteLogo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.ScaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //MAIN
         // HeaderDesktop(),
          HeaderMobile(
            onLogoTap: () {},
            onMenuTap: () {},
          ),
          //SKILLS
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.blueGrey,
          ),
          //PROJECTS
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.blueGrey,
          ),
          //CONTACT
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.blueGrey,
          ),
          //FOOTER
          Container(height: 500, width: double.infinity),
        ],
      ),
    );
  }
}
