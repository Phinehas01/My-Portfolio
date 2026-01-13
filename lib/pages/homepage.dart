import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/drawerMobile.dart';
import 'package:my_portfolio/widgets/headerDesktop.dart';
import 'package:my_portfolio/widgets/headerMobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (context, Constraints) {
        return Scaffold(
          key: ScaffoldKey,
          backgroundColor: CustomColor.ScaffoldBg,
          endDrawer:Constraints.maxWidth >= kMinDesktopWidth? null:const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
              if(Constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    ScaffoldKey.currentState?.openEndDrawer();
                  },
                ),
                if (Constraints.maxWidth >= kMinDesktopWidth)
              const MainDesktop() 
              else 
              const MainMobile(),
              
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
                child: Column(
                  children: [
                    Text(
                      "My Skills",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: 
                      )
                    )

                ],)
              ),
              //CONTACT
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.blueGrey,
              ),
              //FOOTER
              SizedBox(height: 500, width: double.infinity),
            ],
          ),
        );
      }
    );
  }
}
