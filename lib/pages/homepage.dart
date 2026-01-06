import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/navButtons.dart';

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
            margin: EdgeInsets.symmetric(
              horizontal: 20.0, 
              vertical: 10.0)  ,
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
                Text("Phinex Digitals",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  color: CustomColor.yellowSecondary,
                ),
                ),
                Spacer(),
                for (int i = 0; i < navTitles.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: TextButton(
                      onPressed: () {}, 
                      child: Text(navTitles[i],
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.whitePrimary,),
                      
                      ),
                  ),
                  ),
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
