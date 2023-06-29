import 'package:flutter/material.dart';
import 'package:trial1/screens/dashboard.dart';

import 'main.dart';

class facility extends StatelessWidget {
  const facility({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: shade4,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back)),
            backgroundColor: shade3,
            elevation: 0,
            title: const Text(
              'Facilities',
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
            height: double.maxFinite,
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  buildCustomContainer(
                    50,
                    374,
                    font_size: 15,
                    text: "Silent Featues of Institude",
                    boxColor: shade1,
                    font_color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: features.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              buildCustomContainer1(
                                  60, MediaQuery.of(context).size.width * 0.9,
                                  text: features[index].toString(),
                                  boxColor: shade2),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          );
                        }),
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

List<String> features = [
  '40+ Acres Green Campus',
  'Affilated by Shivaji University',
  'Full fledged Library consisting of 23,000+ book titles',
  'Access to 2,700+ eBooks for students',
  'Wifi enabled Campus',
  'All Government Scholarship available for students',
  'Strong Alumni Network',
  'Excellent Placement Record',
  'Gym Facility',
  'Sports Complex: Basketball Court, Cricket Ground, Football Ground, Volleyball Court'
];
