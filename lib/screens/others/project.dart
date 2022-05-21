import 'package:flutter/material.dart';

import 'package:homeflaw/screens/home_screen.dart';
import 'package:homeflaw/screens/others/blog.dart';
import 'package:homeflaw/screens/others/filter.dart';
import 'package:homeflaw/screens/others/langcurrency.dart';


import 'package:homeflaw/screens/others/myadds.dart';
import 'package:homeflaw/screens/others/notification.dart';

import 'package:homeflaw/screens/others/save.dart';
class Project1 extends StatefulWidget {
  Project1({Key? key}) : super(key: key);

  @override
  _Project1State createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white12,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return Home1();
                }));
              },
              icon: Icon(
                Icons.home,
                color: Colors.blue[800],
              )),
          actions: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      minimumSize: Size(30, 40),
                      backgroundColor: Colors.blue[200],
                      primary: Colors.blue[800]),
                  onPressed: () {},
                  icon: Icon(Icons.maps_home_work),
                  label: Text("Maps"),
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(30, 40),
                      backgroundColor: Colors.blue[200],
                      primary: Colors.blue[800]),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return Filter1();
                    }));
                  },
                  icon: Icon(Icons.filter_list_sharp),
                  label: Text("Filter"),
                )),
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.indigo.withOpacity(0.7),
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Sheet2();
                      });
                },
                icon: Icon(
                  Icons.compress_sharp,
                  color: Colors.blue[800],
                )),
            IconButton(
                onPressed: () {
                  scaffoldkey.currentState?.openEndDrawer();
                },
                icon: Icon(
                  Icons.segment_outlined,
                  color: Colors.blue[800],
                )),
          ],
        ),
        endDrawer: Drawer(
          child: Column(children: [
            Container(
              color: Colors.blue[100],
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Image.asset(
                        "images/iconn4.png",
                        width: 40,
                        height: 30,
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 190, top: 20),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.blue[500],
                          ))),
                ],
              ),
            ),
            ListTile(
              title: Text("Saved Searches"),
              leading: Icon(Icons.search, color: Colors.blue[500]),
              onTap: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return Save1();
                }));
              },
            ),
            ListTile(
              title: Text("My Adds"),
              leading: Icon(Icons.add_business, color: Colors.blue[500]),
              onTap: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return Myadds1();
                }));
              },
            ),
            ListTile(
              title: Text("Notifications"),
              leading: Icon(Icons.notification_important_rounded,
                  color: Colors.blue[500]),
              onTap: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return Notific1();
                }));
              },
            ),
            ListTile(
              title: Text("Blogs"),
              leading: Icon(Icons.note_alt_sharp, color: Colors.blue[500]),
              onTap: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return Blogs1();
                }));
              },
            ),
            ListTile(
              title: Text("Language & Currency"),
              leading:
                  Icon(Icons.settings_applications, color: Colors.blue[500]),
              onTap: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return Language1();
                }));
              },
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout_rounded, color: Colors.blue[500]),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.indigo[100],
                        actions: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.indigo),
                              onPressed: () {},
                              child: Text("OK")),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.indigo),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("CANCEL"))
                        ],
                        titlePadding: EdgeInsets.only(top: 20, left: 20),
                        content: Text(
                          "Are you sure to want to logout?",
                        ),
                        contentTextStyle:
                            TextStyle(color: Colors.indigo[800], fontSize: 15),
                      );
                    });
              },
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                    children: [
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.call, color: Colors.blue[900]),
                          label: Text("Call")),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40, top: 20),
                  child: Row(
                    children: [
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.email, color: Colors.blue[900]),
                          label: Text("Email"))
                    ],
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.blue[800],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 70, top: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset("images/insta.png",
                            width: 30, height: 30),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Image.asset("images/fblog.png",
                              width: 30, height: 30))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Image.asset("images/whatsapp.png",
                              width: 30, height: 30))
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
        body: Center(
          child: Text("project"),
        ));
  }
}

class Sheet2 extends StatefulWidget {
  Sheet2({Key? key}) : super(key: key);

  @override
  State<Sheet2> createState() => _Sheet2State();
}

class _Sheet2State extends State<Sheet2> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 6,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      child: Text(
                    "Sort By",
                    style: TextStyle(
                        color: Colors.indigo[100],
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  )),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 25,
                        )),
                  ),
                ],
              ),
              Container(
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[200]!.withOpacity(0.5)),
                      onPressed: () {},
                      icon: Icon(Icons.local_fire_department_outlined),
                      label: Text("Popular"))),
              Container(
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[200]!.withOpacity(0.5)),
                      onPressed: () {},
                      icon: Icon(Icons.new_releases),
                      label: Text("Newest"))),
              Container(
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[200]!.withOpacity(0.5)),
                      onPressed: () {},
                      icon: Icon(Icons.arrow_downward_sharp),
                      label: Text("Lowest Price"))),
              Container(
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[200]!.withOpacity(0.5)),
                      onPressed: () {},
                      icon: Icon(Icons.arrow_upward_sharp),
                      label: Text("Highest Price"))),
            ],
          ),
        )
      ],
    );
  }
}
