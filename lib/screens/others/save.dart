import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homeflaw/screens/home_screen.dart';
import 'package:homeflaw/screens/others/blog.dart';
import 'package:homeflaw/screens/others/langcurrency.dart';
import 'package:homeflaw/screens/others/myadds.dart';
import 'package:homeflaw/screens/others/notification.dart';

class Save1 extends StatefulWidget {
  Save1({Key? key}) : super(key: key);

  @override
  _Save1State createState() => _Save1State();
}

GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

class _Save1State extends State<Save1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          key: scaffoldkey,
          // drawerScrimColor: Colors.blue[300],

          appBar: AppBar(
            title: const Text(
              'Saved Searches',
              style: TextStyle(color: Colors.grey),
            ),
            bottom: TabBar(labelColor: Colors.blue[700], tabs: [
              Tab(child: Text("FOR BUY")),
              Tab(child: Text("FOR RENT")),
              Tab(child: Text("PROJECT")),
            ]),
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
            backgroundColor: Colors.blue[200],
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
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
                onTap: () {},
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
              Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 70, top: 40),
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
              ]),
            ]),
          ),
          body: TabBarView(children: [ForBuy(), ForRent(), Projectt()]),
        ));
  }
}

class ForBuy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ForRent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Projectt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
