import 'package:flutter/material.dart';
import 'package:trial1/screens/dashboard.dart';
import 'package:url_launcher/url_launcher.dart';

class admission extends StatelessWidget {
  const admission({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('URL NOT FOUND');
    }
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
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back)),
            backgroundColor: Color.fromARGB(255, 79, 0, 11),
            elevation: 0,
            title: const Text(
              'Addmission Info',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
        ),
        body: SafeArea(
          child: Container(
            color: shade4,
            height: double.maxFinite,
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  buildCustomContainer(
                    50,
                    374,
                    font_size: 15,
                    text: "Engineering DTE Code - EN 6005",
                    boxColor: shade1,
                    font_color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // buildCustomContainer(
                  //   50,
                  //   374,
                  //   text: "Admission Contact",
                  // ),
                  const SizedBox(
                    height: 15,
                  ),
                  buildCustomContainer(
                    50,
                    374,
                    text: "GCEK Addmission Office",
                    font_size: 15,
                    boxColor: shade1,
                    font_color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchPhone('8275706613');
                    },
                    child: buildCustomContainer(
                      50,
                      374,
                      text: "+91 8275706613",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buildCustomContainer(
                    50,
                    374,
                    text: "Addmission Incharge",
                    boxColor: shade1,
                    font_color: const Color.fromARGB(255, 255, 255, 255),
                    font_size: 15,
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchPhone('9545272414');
                    },
                    child: buildCustomContainer(
                      50,
                      374,
                      text: "+91 9545272414",
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL(
                          'http://www.gcekarad.ac.in/DisplayPage.aspx?page=gaeic&ItemID=cea');
                    },
                    child: buildCustomContainer(
                      50,
                      374,
                      text: "Get more info here",
                      boxColor: shade1,
                      font_color: const Color.fromARGB(255, 255, 255, 255),
                      font_size: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL(
                          'http://www.gcekarad.ac.in/DisplayPage.aspx?page=mc&ItemID=cea');
                    },
                    child: buildCustomContainer(
                      50,
                      374,
                      text: "Get GCEK Cutoff here",
                      boxColor: shade1,
                      font_color: const Color.fromARGB(255, 255, 255, 255),
                      font_size: 15,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
