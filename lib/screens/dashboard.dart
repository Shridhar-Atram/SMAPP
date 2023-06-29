import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trial1/Services.dart';
import 'package:trial1/aboutGCEK.dart';
import 'package:trial1/admission.dart';
import 'package:trial1/branches.dart';
import 'package:trial1/clubs.dart';
import 'package:trial1/documents.dart';
import 'package:trial1/facilities.dart';
import 'package:trial1/models/user_model.dart';
import 'package:trial1/scholarship.dart';
import 'package:trial1/screens/forum.dart';
import 'package:trial1/screens/lost.dart';
import 'package:trial1/screens/lostandfound.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../placement.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  User? user;
  UserModel loggedInUser = UserModel();
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('URL NOT FOUND');
    }
  }

  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
    // Perform any additional tasks after signing out the user
  }

  Future<void> getUser() async {
    user = FirebaseAuth.instance.currentUser;
    await FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      setState(() {
        this.loggedInUser = UserModel.fromMap(value.data());
      });
    });
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  Future<void> _launchPhone(String url) async {
    final Uri uri = Uri(scheme: "tel", host: url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('URL NOT FOUND');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 79, 0, 11),
            elevation: 0,
            title: const Text(
              'GCEK',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(color: Color(0xFF22223b)),
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 40,
                    ),
                    title: Text(
                      'Atharv Chougule',
                    ),
                    subtitle: Text(
                      'atharvc2022@gmail.com',
                      style: TextStyle(color: Colors.white60),
                    ),
                    // trailing: Icon(Icons.phone),

                    iconColor: Colors.white54,
                    textColor: Colors.white,
                  )),
              ListTile(
                leading: const Icon(Icons.dashboard),
                title: const Text('Dashboard'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.add_alert_outlined),
                title: const Text('Forum'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Chat(), // Replace 'ServiceScreen' with the actual class name for your service screen
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.add_alert_outlined),
                title: const Text('Lost And Found'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          LostAndFound(), // Replace 'ServiceScreen' with the actual class name for your service screen
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.miscellaneous_services),
                title: const Text('Services'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const Services(), // Replace 'ServiceScreen' with the actual class name for your service screen
                    ),
                  );
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.privacy_tip),
                title: const Text('Privacy Policy'),
                onTap: () => launch(
                    'https://www.freeprivacypolicy.com/live/76b9281d-dfd5-4e57-9e8d-633121754dbc'),
              ),
              ListTile(
                leading: const Icon(Icons.key),
                title: const Text('User Logout'),
                onTap: _signOut,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.green[50],
        body: SafeArea(
          child: Container(
            color: Colors.orange[50],
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                const SizedBox(
                  height: 15,
                ),
                CarouselSlider(
                  options: CarouselOptions(height: 300.0, autoPlay: true),
                  items: ['1', '2', '3', '4', '5'].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        String str = 'assets/images/slider/$i.jpg';
                        return Container(
                          padding: const EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(str, fit: BoxFit.cover),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 15,
                ),
                buildCustomContainer(
                  50,
                  374,
                  boxColor: shade1,
                  font_color: const Color.fromARGB(255, 255, 255, 255),
                  font_size: 15,
                  image_path: null,
                  text: "Important",
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const admission()));
                      },
                      child: buildCustomContainer(
                        120,
                        120,
                        text: "Admission",
                        image_size: 2,
                        image_path: 'assets/images/admission1.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const document()));
                      },
                      child: buildCustomContainer(120, 120,
                          image_size: 2,
                          text: "Document",
                          image_path: 'assets/images/document1.png'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => scholarship()));
                      },
                      child: buildCustomContainer(120, 120,
                          image_size: 1.5,
                          image_path: 'assets/images/scholarship1.png',
                          text: "Scholarship"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                buildCustomContainer(50, 374,
                    font_size: 13,
                    boxColor: shade1,
                    font_color: const Color.fromARGB(255, 255, 255, 255),
                    image_path: null,
                    text: "News and Updates"),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://cetcell.mahacet.org/');
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'assets/images/mht_cet_1.png',
                          text: "MHT-CET",
                          image_size: 4),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://jeemain.nta.nic.in/');
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'assets/images/jee_1.png',
                          text: "JEE Main",
                          image_size: 3),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchURL(
                            'https://fe2022.mahacet.org/StaticPages/HomePage');
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'assets/images/cap_round1.png',
                          text: "Cap Round",
                          image_size: 2),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL('http://www.gcekarad.ac.in/');
                  },
                  child: buildCustomContainer(
                    120,
                    120,
                    image_path: 'assets/images/gce.png',
                    text: "GCEK Web",
                    image_size: 30,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                buildCustomContainer(50, 374,
                    font_size: 13,
                    image_path: null,
                    boxColor: shade1,
                    font_color: const Color.fromARGB(255, 255, 255, 255),
                    text: "GCEK"),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => aboutpage()));
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'assets/images/about_gcek1.png',
                          text: "About GCEK",
                          image_size: 2),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => branch()));
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'assets/images/branches1.png',
                          text: "Branches",
                          image_size: 2),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PlacementPage()));
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'assets/images/placement1.png',
                          text: "Placement",
                          image_size: 1.5),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => clubs()));
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'assets/images/campus_life1.png',
                          text: "College Clubs",
                          image_size: 2),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => facility()));
                      },
                      child: buildCustomContainer(120, 120,
                          image_path: 'assets/images/facilities1.png',
                          text: "Facilities",
                          image_size: 2),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.all(8.0),
                  height: 450,
                  width: 360,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 114, 0, 38),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 0.1,
                          blurRadius: 5.0,
                          offset: Offset(0, 7)),
                    ],
                    // color: Colors.,
                  ),
                  child: Column(
                    children: [
                      const Text('CONTACT US',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              color: Colors.white)),
                      const Divider(thickness: 2, color: Colors.white),
                      const Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Text('Government College of Engineering, Karad',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                color: Colors.white)),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Text(
                            '(An Autonomous Institute of Government of Maharashtra)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                color: Colors.white)),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                        indent: 30,
                        endIndent: 30,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: 'Address : ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                fontSize: 15,
                              ),
                              children: [
                            TextSpan(
                              text:
                                  'Vidyanagar, Karad, Dist. Satara, Maharashtra (India) - 415124\n\n',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            TextSpan(
                                text: 'Contact No :  ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                                children: [
                                  TextSpan(
                                      text: '9545272414\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15,
                                          fontFamily: 'Poppins')),
                                ]),
                            TextSpan(
                                text: 'Visit Website :  ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                                children: [
                                  TextSpan(
                                      text: 'http://www.gcekarad.ac.in/\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15,
                                          fontFamily: 'Poppins')),
                                ]),
                            TextSpan(
                                text: 'Email :  ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                                children: [
                                  TextSpan(
                                      text: 'admin.mis@gcekarad.ac.in',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      )),
                                ])
                          ])),
                      const Divider(thickness: 2, color: Colors.white),
                      const Text(
                        'Follow us',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _launchURL(
                                  'https://www.linkedin.com/school/government-college-of-engineering-karad-official/');
                            },
                            child: Image.asset(
                              'assets/images/linkdin.png',
                              scale: 18,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL('https://www.facebook.com/GCoEKarad/');
                            },
                            child: Image.asset(
                              'assets/images/facebook.png',
                              scale: 10,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL('https://www.youtube.com/@gcek');
                            },
                            child: Image.asset(
                              'assets/images/youtube.png',
                              scale: 10,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL('https://twitter.com/gcekarad');
                            },
                            child: Image.asset(
                              'assets/images/twitter.png',
                              scale: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

Container buildCustomContainer(
  double height,
  double width, {
  Color font_color = const Color.fromARGB(255, 0, 0, 0),
  Color boxColor = shade2,
  double image_size = 7,
  double font_size = 12,
  String? image_path,
  required String text,
}) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    height: height,
    width: width,
    decoration: BoxDecoration(
      border: Border.all(color: boxColor),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
            color: Colors.black12,
            spreadRadius: 0.1,
            blurRadius: 5.0,
            offset: Offset(0, 7)),
      ],
      color: boxColor.withAlpha(500),
    ),
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 20),
        if (image_path != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              image_path,
              scale: image_size,
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 1.0,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: font_size,
              fontFamily: 'Poppins',
              color: font_color,
            ),
          ),
        ),
      ],
    ),
  );
}

const Color shade1 = Color(0x00ce4257);
const Color shade2 = Color(0x00ff9b54);
const Color shade3 = Color.fromARGB(255, 79, 0, 11);
const Color shade4 = Color.fromARGB(255, 255, 243, 224);

Container buildCustomContainer1(
  double height,
  double width, {
  Color font_color = const Color.fromARGB(255, 0, 0, 0),
  Color boxColor = shade2,
  double image_size = 7,
  double font_size = 12,
  String? image_path,
  required String text,
}) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    height: height,
    width: width,
    decoration: BoxDecoration(
      border: Border.all(color: boxColor),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
            color: Colors.black12,
            spreadRadius: 0.1,
            blurRadius: 5.0,
            offset: Offset(0, 7)),
      ],
      color: boxColor.withAlpha(500),
    ),
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 20),
        if (image_path != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              image_path,
              scale: image_size,
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 1.0,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: font_size,
              fontFamily: 'Poppins',
              color: font_color,
            ),
          ),
        ),
      ],
    ),
  );
}

Container buildCustomContainer2(
  double height,
  double width, {
  Color font_color = Colors.white,
  Color boxColor = shade1,
  double image_size = 7,
  double font_size = 13,
  String? image_path,
  required String text,
}) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    height: height,
    width: width,
    decoration: BoxDecoration(
      border: Border.all(color: boxColor),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
            color: Colors.black12,
            spreadRadius: 0.1,
            blurRadius: 5.0,
            offset: Offset(0, 7)),
      ],
      color: boxColor,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 20),
        if (image_path != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              image_path,
              scale: image_size,
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 1.0,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: font_size,
                fontFamily: 'Poppins',
                color: font_color,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Container buildCustomContainer3(
  double width, {
  Color font_color = const Color.fromARGB(255, 0, 0, 0),
  Color boxColor = shade2,
  double image_size = 7,
  double font_size = 13,
  String? image_path,
  required String text,
}) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    width: width,
    decoration: BoxDecoration(
      border: Border.all(color: boxColor),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
            color: Colors.black12,
            spreadRadius: 0.1,
            blurRadius: 5.0,
            offset: Offset(0, 7)),
      ],
      color: boxColor.withAlpha(500),
    ),
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 20),
        if (image_path != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              image_path,
              scale: image_size,
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 1.0,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: font_size,
              fontFamily: 'Poppins',
              color: font_color,
            ),
          ),
        ),
      ],
    ),
  );
}

Future<void> _signOut() async {
  await FirebaseAuth.instance.signOut();
}
