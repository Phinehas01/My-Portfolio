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
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "My Skills",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,

                      ),
                    ),
                   //skill widgets here
                   Row(
                    children: [
                      Wrap(
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 450,
                            ),
                            child: Container(
                              width: 200,
                              decoration: BoxDecoration(
                                color: CustomColor.bgLight2,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text("Android Dev", style: TextStyle(color: CustomColor.whitePrimary),),
                                    leading: Icon(Icons.android, color: CustomColor.whitePrimary,
                                    ),
                                    ),
                                    ListTile(
                                    title: Text("IOS Dev", style: TextStyle(color: CustomColor.whitePrimary),),
                                    leading: Icon(Icons.apple, color: CustomColor.whitePrimary,
                                    ),
                                    ),
                                    ListTile(
                                    title: Text("Web Dev", style: TextStyle(color: CustomColor.whitePrimary),),
                                    leading: Icon(Icons.language, color: CustomColor.whitePrimary,
                                    ),
                                    ),
                                     ListTile(
                                    title: Text("Desktop Dev", style: TextStyle(color: CustomColor.whitePrimary),),
                                    leading: Icon(Icons.desktop_windows_outlined, color: CustomColor.whitePrimary,
                                    ),
                                    ),

                                ],
                              ),
                               
                            ),
                          ),
                        ],
                        )

                   ],)

                ],)
              ),
              //PROJECTS
              Container(
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
