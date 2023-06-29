import 'package:flutter/material.dart';
import 'package:trial1/screens/dashboard.dart';

import 'main.dart';

class branch extends StatelessWidget {
  const branch({super.key});

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
              'Branches',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            color: shade4,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                buildCustomContainer(
                  50,
                  374,
                  font_size: 15,
                  text: "B.Tech Cources",
                  boxColor: shade1,
                  font_color: const Color.fromARGB(255, 255, 255, 255),
                ),
                SizedBox(
                  height: 5,
                ),
                buildCustomContainer(
                  50,
                  374,
                  text: "Information Technology",
                  boxColor: shade2,
                  font_size: 13,
                ),
                SizedBox(
                  height: 1,
                ),
                buildCustomContainer(
                  50,
                  374,
                  text: "Electronics and Tekecommunication",
                  boxColor: shade2,
                  font_size: 13,
                ),
                SizedBox(
                  height: 1,
                ),
                buildCustomContainer(
                  50,
                  374,
                  text: "Mechanical Engineering",
                  boxColor: shade2,
                  font_size: 13,
                ),
                SizedBox(
                  height: 1,
                ),
                buildCustomContainer(
                  50,
                  374,
                  text: "Electrical Engineering",
                  boxColor: shade2,
                  font_size: 13,
                ),
                SizedBox(
                  height: 1,
                ),
                buildCustomContainer(
                  50,
                  374,
                  text: "Civil Engineering",
                  boxColor: shade2,
                  font_size: 13,
                ),
                SizedBox(
                  height: 1,
                ),
                SizedBox(
                  height: 20,
                ),
                buildCustomContainer(
                  50,
                  374,
                  font_size: 15,
                  text: "MCA",
                  boxColor: shade1,
                  font_color: const Color.fromARGB(255, 255, 255, 255),
                ),
                SizedBox(
                  height: 20,
                ),
                buildCustomContainer(
                  50,
                  374,
                  font_size: 15,
                  text: "M.Tech Cources",
                  boxColor: shade1,
                  font_color: const Color.fromARGB(255, 255, 255, 255),
                ),
                SizedBox(
                  height: 2,
                ),
                buildCustomContainer(
                  50,
                  374,
                  text: "Construction Management",
                  font_size: 13,
                ),
                SizedBox(
                  height: 2,
                ),
                buildCustomContainer(
                  50,
                  374,
                  text: "Structural Engineering",
                  font_size: 13,
                ),
                SizedBox(
                  height: 2,
                ),
                buildCustomContainer(
                  50,
                  374,
                  text: "Computer Science and Engineering",
                  font_size: 13,
                ),
                SizedBox(
                  height: 2,
                ),
                buildCustomContainer(
                  50,
                  374,
                  text: "Electrical Power System",
                  font_size: 13,
                ),
                SizedBox(
                  height: 2,
                ),
                buildCustomContainer(
                  50,
                  374,
                  text: "Heat Power Engineering",
                  font_size: 13,
                ),
                SizedBox(
                  height: 2,
                ),
                buildCustomContainer(
                  50,
                  374,
                  text: "Design Engineering",
                  font_size: 13,
                ),
                SizedBox(
                  height: 2,
                ),
                buildCustomContainer(
                  50,
                  374,
                  text: "Production Engineering",
                  font_size: 13,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
