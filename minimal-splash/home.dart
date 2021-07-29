import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:photo_editing_app/constants/theme.dart';
import 'package:photo_editing_app/screens/import_image.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: kBackgroundColor,
      endDrawerEnableOpenDragGesture: false,
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              Text('Menu Item 1'),
              Text('Menu Item 2'),
            ],
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Builder(builder: (context) {
                    return InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        child: SvgPicture.asset('assets/icons/menu.svg'),
                      ),
                    );
                  }),
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Future App',
                      style:
                          TextStyle(fontSize: titleFontSize, color: kTextColor),
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ImportImageScreen()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Icon(Icons.arrow_forward_ios_outlined,
                            size: 50, color: kTextColor),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 2, color: kTextColor)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
