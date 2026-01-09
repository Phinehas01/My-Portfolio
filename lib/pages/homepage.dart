import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/drawerMobile.dart';
import 'package:my_portfolio/widgets/headerDesktop.dart';
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
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
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
              Container( 
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                height: screenSize.height/1.2,
                constraints: BoxConstraints(minHeight: 350.0
                  
                ),
                child: Row(
                children: [
                  Column(
                    children: [
                      Text("Hi,\n I'm Phinehas \n A Flutter Developer"),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Get in touch"),
                      ),
                    ],
                  ),  
                  Image.asset(
                    "assets/myimage1.png",
                    width: screenWidth / 2,
                    fit: BoxFit.cover,
                    
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
              SizedBox(height: 500, width: double.infinity),
            ],
          ),
        );
      }
    );
  }
}
