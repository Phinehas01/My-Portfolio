import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

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
          Container(
            height: 60.0,
            width: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  CustomColor.bgLight1,
                ],
                ),
                borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                Text("Phinex Digitals"),
                Spacer(),
                for (int i = 0; i < 5; i++)
                  TextButton(onPressed: () {}, child: Text("Button")),
              ],
            ),
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
