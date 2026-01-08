import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/drawerMobile.dart';
import 'package:my_portfolio/widgets/headerMobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ScaffoldKey,
      backgroundColor: CustomColor.ScaffoldBg,
      endDrawer: const DrawerMobile(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //MAIN
         // HeaderDesktop(),
          HeaderMobile(
            onLogoTap: () {},
            onMenuTap: () {
              ScaffoldKey.currentState?.openEndDrawer();
            },
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
