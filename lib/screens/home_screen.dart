
import 'package:flutter/material.dart';
import 'package:homeflaw/screens/add_screen.dart';
import 'package:homeflaw/screens/favorite.dart';
import 'package:homeflaw/screens/homepage_screen.dart';
import 'package:homeflaw/screens/others/profile.dart';
import 'package:homeflaw/screens/others/project.dart';

class Home1 extends StatefulWidget {
  Home1({Key? key}) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int curTab = 0;

  final List<Widget> screen = [
    Fav1(),
    Project1(),
    Homepage1(),
    Add1(),
    Account1(),
  ];



  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Homepage1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentScreen = Homepage1();
          });
        },
        child: Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[100],
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*////////////////////////////////1   */
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Fav1();
                        curTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite,
                            color:
                                curTab == 1 ? Colors.blue : Colors.blue[300]),
                        Text(
                          "Favorites",
                          style: TextStyle(
                              color:
                                  curTab == 1 ? Colors.blue : Colors.blue[300]),
                        )
                      ],
                    ),
                  ),
                  /*////////////////////////////////2   */

                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Project1();
                        curTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.holiday_village_outlined,
                            color:
                                curTab == 2 ? Colors.blue : Colors.blue[300]),
                        Text(
                          "project",
                          style: TextStyle(
                              color:
                                  curTab == 2 ? Colors.blue : Colors.blue[300]),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*////////////////////////////////3   */
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      /* setState(() {
                        currentScreen = Add1();
                        curTab = 3;
                      });*/

                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Add1();
                      }));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_business_sharp,
                            color:
                                curTab == 3 ? Colors.blue : Colors.blue[300]),
                        Text(
                          "add",
                          style: TextStyle(
                              color:
                                  curTab == 3 ? Colors.blue : Colors.blue[300]),
                        )
                      ],
                    ),
                  ),
                  /*////////////////////////////////4   */

                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      /* setState(() {
                        // currentScreen = Account1();
                        curTab = 4;
                      });*/
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Account1();
                      }));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle,
                            color:
                                curTab == 4 ? Colors.blue : Colors.blue[300]),
                        Text(
                          "Account",
                          style: TextStyle(
                              color:
                                  curTab == 4 ? Colors.blue : Colors.blue[300]),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
