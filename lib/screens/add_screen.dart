


import 'package:flutter/material.dart';
import 'package:homeflaw/datamodels/product_datamodel.dart';
import 'package:homeflaw/screens/home_screen.dart';
import 'package:homeflaw/services/firestorage.dart';
import 'package:homeflaw/services/firestore.dart';
import 'package:image_picker/image_picker.dart';

class Add1 extends StatefulWidget {
  @override
  _Add1State createState() => _Add1State();
}

class _Add1State extends State<Add1> {
String? imgUrl;
final _formKey = GlobalKey<FormState>();

final title= TextEditingController();

final phonenumber= TextEditingController();
final propertyType= TextEditingController();
final price= TextEditingController();
final area= TextEditingController();
  List<String> lst = ['Sell', 'Rent'];
  int selectedIndex = 0;

  var names;

  var selects;



  List<String> widgets = [
    "Apartment",
    "House",
    "Lower Portion",
    "Upper Portion",
    "Villa",
    "Farmhouse"
  ];
  int selectedIndex2 = 0;

  /* List<String> widget3 = [
    "Residential Plot",
    "Commercial Plot",
    "Agricultural Land",
    "Industrial Land",
    "Other",
  
  ];
  int selectedIndex3 = 0;
  */

  List<String> bedroom = ['1', '2', '3', '4', '5'];
  int selectedIndexbed = 0;

  List<String> bath = ['1', '2', '3', '4', '5'];
  int selectedIndexbath = 0;

  List<String> kitchens = ['1', '2', '3', '4', '5'];
  int selectedIndexkit = 0;

  List<String> rooms = ['1', '2', '3', '4', '5'];
  int selectedIndexroom = 0;

  List<String> rooms2 = ['1', '2', '3', '4', '5'];
  int selectedIndexroom2 = 0;

  List<String> rooms3 = ['1', '2', '3', '4', '5'];
  int selectedIndexroom3 = 0;

  List<String> servant = ['1', '2', '3', '4', '5'];
  int selectedIndexserv = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white12,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            'Add Property',
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
                  onPressed: () {
                    //todo  
                  var pro =   Product(  
                    imgUrl: imgUrl.toString(),
                    sellOrRentType: lst[selectedIndex], 
                     title:  title.text,
                      location: names ,
                      phoneNumber: phonenumber.text, 
                      propertyType: widgets[selectedIndex2],
                       price: price.text, 
                        area: area.text,
                       bedrooms:  bedroom[selectedIndexbed] ,
                       baths: bath[selectedIndexbath],
                        kitchens:  kitchens[selectedIndexkit], 
                        drawingrooms: rooms[selectedIndexroom],
                         diningrooms: rooms2[selectedIndexroom2],
                          laundryrooms : rooms3[selectedIndexroom3],
                           servantquarters:  servant[selectedIndexserv]
                    );
                      // print(pro);
                       FirestoreManager().addData(pro);
                       Navigator.of(context)
                           .pushReplacement(MaterialPageRoute(builder: (context) {
                         return Home1();
                       }));
                       
                  },
                  child: Text(
                    "ADD PROPERTY",
                    style: TextStyle(fontSize: 18),
                  ))),
        ),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(10),
                      child: customRadio(lst[0], 0)),
                  Container(
                      margin: EdgeInsets.all(10),
                      child: customRadio(lst[1], 1)),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 5),
              child: Text(
                "Project Title",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[500]),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 5),
              child: TextFormField(
                controller: title,
                  decoration: InputDecoration(
                hintText: "Type",
                enabled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue.shade200, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue.shade400, width: 2)),
              )),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 15,
                top: 10,
              ),
              child: Text(
                "Locations",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[500]),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue.shade200, width: 2)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: Text("Select location"),
                    items: [
                      "Al anbar",
                      "Baghdad",
                      "Basrah",
                      "Duhok",
                      "Erbil",
                      "Halabja shahid",
                      "Karbalah",
                      "Kirkuk",
                      "Nainawa",
                      "Nasiriah",
                      "Rania",
                      "Sulaymaniah",
                      "Zakho",
                    ]
                        .map((e) => DropdownMenuItem(
                              child: Text("$e"),
                              value: e,
                            ))
                        .toList(),
                    onChanged: (String? val) {
                      setState(() {
                        names = val!;
                      });
                    },
                    value: names,
                  ),
                )),

/////////////////////////////////////////////////////////////////
/*
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue.shade200, width: 2)),
            child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
              hint: Text("Neighborhood"),
              items: [],
              onTap: () {
                showSearch(context: context, delegate: SearchData());
              },
            )),
          ),*/

            // Container(
            //   padding: EdgeInsets.all(10),
            //   margin: EdgeInsets.only(top: 5),
            //   height: 70,
            //   child: TextFormField(
            //       decoration: InputDecoration(
            //     enabled: true,
            //     enabledBorder: OutlineInputBorder(
            //         borderSide:
            //             BorderSide(color: Colors.blue.shade200, width: 2)),
            //     focusedBorder: OutlineInputBorder(
            //         borderSide:
            //             BorderSide(color: Colors.blue.shade400, width: 2)),
            //   )),
            // ),

            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, bottom: 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.blue[400],
                      ),
                      Text("  Property Type"),
                    ],
                  ),
                ),
                // Container(
                //   width: double.infinity,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: <Widget>[
                //       Container(
                //           margin: EdgeInsets.all(5),
                //           child: customRadio1(homee1[0], 0)),
                //       Container(
                //           margin: EdgeInsets.all(5),
                //           child: customRadio1(homee1[1], 1)),
                //       Container(
                //           margin: EdgeInsets.all(5),
                //           child: customRadio1(homee1[2], 2)),
                //       SizedBox(
                //         height: 30.0,
                //       ),
                //     ],
                //   ),
                // ),
                Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child:
                                customRadio2(widgets[0], 0, Icons.apartment)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadio2(widgets[1], 1, Icons.house)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadio2(
                                widgets[2], 2, Icons.home_outlined)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadio2(
                                widgets[3], 3, Icons.maps_home_work_sharp)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadio2(widgets[4], 4, Icons.villa)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadio2(
                                widgets[5], 5, Icons.house_rounded)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.only(left: 20, top: 15),
                //   child: Row(
                //     children: [
                //       Icon(
                //         Icons.home,
                //         color: Colors.blue[400],
                //       ),
                //       Text("  Property Type"),
                //     ],
                //   ),
                // ),
                // Container(
                //     width: 200,
                //     margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                //     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(12),
                //         border:
                //             Border.all(color: Colors.blue.shade200, width: 2)),
                //     child: DropdownButtonHideUnderline(
                //       child: DropdownButton<String>(
                //         hint: Text("Select"),
                //         items: [
                //           "Furnished",
                //           "UnFurnished",
                //         ]
                //             .map((e) => DropdownMenuItem(
                //                   child: Text("$e"),
                //                   value: e,
                //                 ))
                //             .toList(),
                //         onChanged: (String? val) {
                //           setState(() {
                //             selects = val!;
                //           });
                //         },
                //         value: selects,
                //       ),
                //     )),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.monetization_on_sharp,
                        color: Colors.blue[400],
                      ),
                      Text(" Price"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 5),
                  height: 70,
                  child: TextFormField(
                    controller: price,
                      decoration: InputDecoration(
                    hintText: "Type",
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade200, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade400, width: 2)),
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        top: 10,
                      ),
                      child: Text(
                        "phone number",
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  height: 70,
                  child: TextFormField(
                    controller: phonenumber
                    
                    ,
                      decoration: InputDecoration(
                    hintText: "Type",
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade200, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade400, width: 2)),
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        top: 10,
                      ),
                      child: Text(
                        "Area m2",
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 10, bottom: 60),
                  height: 70,
                  child: TextFormField(
                    controller: area,
                      decoration: InputDecoration(
                    hintText: "Type",
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade200, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade400, width: 2)),
                  )),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Bedrooms",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobed(bedroom[0], 0)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobed(bedroom[1], 1)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobed(bedroom[2], 2)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobed(bedroom[3], 3)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobed(bedroom[4], 4)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Baths",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobath(bath[0], 0)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobath(bath[1], 1)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobath(bath[2], 2)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobath(bath[3], 3)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiobath(bath[4], 4)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Kitchens",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiokit(kitchens[0], 0)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiokit(kitchens[1], 1)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiokit(kitchens[2], 2)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiokit(kitchens[3], 3)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadiokit(kitchens[4], 4)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Drawing Rooms",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom(rooms[0], 0)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom(rooms[1], 1)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom(rooms[2], 2)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom(rooms[3], 3)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom(rooms[4], 4)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Dining Rooms",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom2(rooms2[0], 0)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom2(rooms2[1], 1)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom2(rooms2[2], 2)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom2(rooms2[3], 3)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom2(rooms2[4], 4)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Laundry Rooms",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom3(rooms3[0], 0)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom3(rooms3[1], 1)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom3(rooms3[2], 2)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom3(rooms3[3], 3)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioroom3(rooms3[4], 4)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Servant Quarters",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioserv(servant[0], 0)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioserv(servant[1], 1)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioserv(servant[2], 2)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioserv(servant[3], 3)),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: customRadioserv(servant[4], 4)),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
            // Container(
            //     margin: EdgeInsets.only(bottom: 30, left: 20),
            //     child: Text("Add Main Features",
            //         style: TextStyle(
            //           color: Colors.grey,
            //           fontSize: 16.0,
            //         ))),

         //todo

            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(top: 30, bottom: 20, left: 30, right: 30),
              width: 60,
              child: ElevatedButton.icon(
                  onPressed: ()async {
                imgUrl = await _getFromGallery();
 print("=======================");
        print(imgUrl);
         print("=======================");
                   
                  },
                  icon: Icon(Icons.add),
                  label: Text("Upload property Pictures")),
            ),
         
            
            ////////////////!!!!!!!!!!!
          ],
        ),
        );
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget customRadio(String txt, int index) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          minimumSize: Size(160, 40),
          backgroundColor:
              selectedIndex == index ? Colors.blue[300] : Colors.grey[100]),
      onPressed: () => changeIndex(index),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndex == index ? Colors.grey[200] : Colors.grey),
      ),
    );
  }

  ///////////////////////////////////////////////////////////////////////////////////////

  // void changeIndex1(int index1) {
  //   setState(() {
  //     selectedIndex1 = index1;
  //   });
  // }

  // Widget customRadio1(String txt, int index1) {
  //   return OutlinedButton(
  //     style: OutlinedButton.styleFrom(
  //         shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(10.0),
  //             side: BorderSide(
  //                 color: Colors.blue, width: 4, style: BorderStyle.solid)),
  //         // minimumSize: Size(40, 40),
  //         fixedSize: Size(110, 30),
  //         backgroundColor:
  //             selectedIndex1 == index1 ? Colors.blue[200] : Colors.white),
  //     onPressed: () => changeIndex1(index1),
  //     child: Text(
  //       txt,
  //       style: TextStyle(
  //           color: selectedIndex1 == index1 ? Colors.grey[200] : Colors.grey),
  //     ),
  //   );
  // }

  ////////////////////////////////////////////////////////////////////////////////////////////////////////
  void changeIndex2(int index2) {
    setState(() {
      selectedIndex2 = index2;
    });
  }

  Widget customRadio2(String txt, int index2, IconData txt1) {
    return OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                    color: Colors.blue, width: 4, style: BorderStyle.solid)),
            fixedSize: Size(155, 30),
            backgroundColor:
                selectedIndex2 == index2 ? Colors.blue[200] : Colors.white),
        onPressed: () => changeIndex2(index2),
        icon: Icon(txt1),
        label: Text(
          txt,
          style: TextStyle(
              color: selectedIndex2 == index2 ? Colors.grey[200] : Colors.grey),
        ));
  }

//////////////////////// bedrooms////////////////////////////////////////////////

  void changeIndexbed(int indexbed) {
    setState(() {
      selectedIndexbed = indexbed;
    });
  }

  Widget customRadiobed(String txt, int indexbed) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexbed == indexbed
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexbed(indexbed),
      child: Text(
        txt,
        style: TextStyle(
            color:
                selectedIndexbed == indexbed ? Colors.grey[200] : Colors.grey),
      ),
    );
  }

  //////////////////////// baths ////////////////////////////////////////////////

  void changeIndexbath(int indexbath) {
    setState(() {
      selectedIndexbath = indexbath;
    });
  }

  Widget customRadiobath(String txt, int indexbath) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexbath == indexbath
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexbath(indexbath),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexbath == indexbath
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }

  //////////////////////// kitchens ////////////////////////////////////////////////

  void changeIndexkit(int indexkit) {
    setState(() {
      selectedIndexkit = indexkit;
    });
  }

  Widget customRadiokit(String txt, int indexkit) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexkit == indexkit
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexkit(indexkit),
      child: Text(
        txt,
        style: TextStyle(
            color:
                selectedIndexkit == indexkit ? Colors.grey[200] : Colors.grey),
      ),
    );
  }

  //////////////////////// rooms ////////////////////////////////////////////////

  void changeIndexroom(int indexroom) {
    setState(() {
      selectedIndexroom = indexroom;
    });
  }

  Widget customRadioroom(String txt, int indexroom) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexroom == indexroom
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexroom(indexroom),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexroom == indexroom
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }

  //////////////////////// rooms2 ////////////////////////////////////////////////

  void changeIndexroom2(int indexroom2) {
    setState(() {
      selectedIndexroom2 = indexroom2;
    });
  }

  Widget customRadioroom2(String txt, int indexroom2) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexroom2 == indexroom2
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexroom2(indexroom2),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexroom2 == indexroom2
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }

  //////////////////////// rooms3 ////////////////////////////////////////////////

  void changeIndexroom3(int indexroom3) {
    setState(() {
      selectedIndexroom3 = indexroom3;
    });
  }

  Widget customRadioroom3(String txt, int indexroom3) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexroom3 == indexroom3
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexroom3(indexroom3),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexroom3 == indexroom3
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }

  //////////////////////// servant ////////////////////////////////////////////////

  void changeIndexserv(int indexserv) {
    setState(() {
      selectedIndexserv = indexserv;
    });
  }

  Widget customRadioserv(String txt, int indexserv) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexserv == indexserv
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexserv(indexserv),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexserv == indexserv
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }
  
   _getFromGallery() async {
    XFile? image = await  ImagePicker().pickImage(source: ImageSource.gallery
      maxWidth: 1800,
        maxHeight: 1800, 
    );


        
    
    if (image != null) {
    String? imgUrl =  await StorageManager().uploadFile(image.name, image.path);
         
        print("+++++++++++++++++++++++++");
        print(imgUrl);
        return imgUrl;
        

    }
}
}


