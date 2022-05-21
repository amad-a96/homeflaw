import 'package:flutter/material.dart';
import 'package:homeflaw/screens/home_screen.dart';
import 'package:homeflaw/screens/others/blog.dart';
import 'package:homeflaw/screens/others/langcurrency.dart';
import 'package:homeflaw/screens/others/myadds.dart';
import 'package:homeflaw/screens/others/notification.dart';
import 'package:homeflaw/screens/others/save.dart';

class Account1 extends StatefulWidget {
  Account1({Key? key}) : super(key: key);

  @override
  _Account1State createState() => _Account1State();
}

class _Account1State extends State<Account1> {
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        appBar: AppBar(
          backgroundColor: Colors.white12,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            'Profile',
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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                  decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.grey),
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
              )),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Phone",
                    labelStyle: TextStyle(color: Colors.grey),
                    enabled: true,
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2)),
                  )),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.grey),
                    enabled: true,
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2)),
                  )),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                  style: TextStyle(decoration: TextDecoration.none),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.grey),
                    enabled: true,
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2)),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 90),
              padding: EdgeInsets.all(10),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text("Save")),
            )
          ]),
        ));
  }
}
