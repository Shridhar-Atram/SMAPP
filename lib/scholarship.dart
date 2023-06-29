import 'package:flutter/material.dart';
import 'package:trial1/screens/dashboard.dart';

import 'main.dart';

class scholarship extends StatelessWidget {
  const scholarship({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Color(0xFFf2e9e4),
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
              'Scholarships',
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
          child: SingleChildScrollView(
            child: Container(
              color: shade4,
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 1.65,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        buildCustomContainer1(
                          95,
                          MediaQuery.of(context).size.width * 0.35,
                          text: 'Category',
                          font_size: 15,
                          boxColor: shade1,
                          font_color: Colors.white,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        buildCustomContainer1(
                          95,
                          MediaQuery.of(context).size.width * 0.53,
                          text: 'Scholarsihp Details',
                          font_size: 15,
                          boxColor: shade1,
                          font_color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            List<String> list1 = [
                              'SC/ST',
                              'VJ/DT/NT/SBC/TFWS',
                              'OBC',
                              'EBC/EWS',
                              'Minority',
                              'Teachers'
                            ];
                            List<String> list2 = [
                              '100% scholarship on Tution fee & Development fee',
                              '100% scholarship on Tution fee (Parent income below 8lacks)',
                              '50% scholarship on Tution fee',
                              '50% scholarship on Tution fee',
                              '50% scholarship on Tution fee OR Rs.50,000/ whichever maximum',
                              'Rs 4,000/ per year'
                            ];
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    buildCustomContainer1(
                                        95,
                                        MediaQuery.of(context).size.width *
                                            0.35,
                                        text: list1[index].toString(),
                                        boxColor: shade2),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    buildCustomContainer1(
                                        95,
                                        MediaQuery.of(context).size.width *
                                            0.53,
                                        text: list2[index].toString(),
                                        boxColor: shade2),
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
