import 'package:flutter/material.dart';
import 'package:homeflaw/screens/home_screen.dart';

import 'package:homeflaw/screens/others/blog.dart';

import 'package:homeflaw/screens/others/myadds.dart';
import 'package:homeflaw/screens/others/notification.dart';

import 'package:homeflaw/screens/others/save.dart';

class Language1 extends StatefulWidget {
  Language1({Key? key}) : super(key: key);

  @override
  _Language1State createState() => _Language1State();
}

class _Language1State extends State<Language1> {
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  List<String> lang = [
    "إنجليزي - English",
    "عربي - Arabic",
    " کوردی - Kurdish"
  ];
  int selectedIndexlang = 0;

  var prices;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          centerTitle: true,
          title: const Text(
            'Languages & Currency',
            style: TextStyle(color: Colors.grey),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return Home1();
                }));
              },
              icon: Icon(
                Icons.west_sharp,
                color: Colors.blue[800],
              )),
          actions: [
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
        bottomNavigationBar: BottomAppBar(
          child: Container(
              margin: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo[400],
                      onPrimary: Colors.indigo[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(fontSize: 18),
                  ))),
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
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 80, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //  Container( margin: EdgeInsets.all(child: customRadiolang(lang[0], 0)),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 50, bottom: 5),
                          child: Image.asset("images/england.png",
                              width: 70, height: 50),
                        ),
                        customRadiolang(lang[0], 0)
                      ],
                    ),
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 50, bottom: 10),
                          child: Image.asset("images/iraq.png",
                              width: 70, height: 50),
                        ),
                        customRadiolang(lang[1], 1)
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: 50,
                          ),
                          child: Image.asset("images/kurdistan.png",
                              width: 70, height: 50),
                        ),
                        customRadiolang(lang[2], 2)
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border:
                        Border.all(color: Colors.indigo.shade200, width: 2)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      hint: Text("Currency"),
                      items: [
                        "USD Dollar",
                        "Iraqi Dinar",
                        "Euro",
                        "Pound",
                      ]
                          .map((e) => DropdownMenuItem(
                                child: Text("$e"),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (String? val) {
                        setState(() {
                          prices = val!;
                        });
                      },
                      value: prices),
                )),
          ],
        ));
  }

  void changeIndexlang(int indexlang) {
    setState(() {
      selectedIndexlang = indexlang;
    });
  }

  Widget customRadiolang(String txt, int indexlang) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          // minimumSize: Size(40, 40),
          fixedSize: Size(160, 40),
          backgroundColor: selectedIndexlang == indexlang
              ? Colors.indigo[200]
              : Colors.grey[100]),
      onPressed: () => changeIndexlang(indexlang),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexlang == indexlang
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }
}
