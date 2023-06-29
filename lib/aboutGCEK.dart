import 'package:flutter/material.dart';
import 'package:trial1/screens/dashboard.dart';

class aboutpage extends StatelessWidget {
  const aboutpage({super.key});

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
              backgroundColor: shade3,
              elevation: 0,
              title: const Text(
                'About GCEK',
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                buildCustomContainer3(374,
                    text:
                        '''
Government College of Engineering, Karad (GCEK) is an autonomous technical institute in the Indian state of Maharashtra.
It was established in 1960 and is affiliated to the Shivaji University with an autonomous status under the UGC.
The autonomy was granted by the UGC. Karad is a culturally vibrant town and is a sought after center of education in Western Maharashtra
Government College of Engineering, Karad is one among seven engineering colleges established by the State Government of Maharashtra and first among those established post-independence.
The college was established in 1960 with undergraduate programmes in three core branches of Civil, Mechanical and Electrical Engineering, initially affiliated to Savitribai Phule Pune University and subsequently to Shivaji University in 1972. Post graduate programmes (Master of Engineering) in these disciplines too were started in 1967.
''',
                    boxColor: shade2,
                    font_size: 13),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    width: 400,
                    height: 250,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset('assets/images/gcek3.jpg')),
                  ),
                ),
                buildCustomContainer3(374,
                    text:
                        '''
The campus is situated in Vidyanagar, Karad. GCEK has a green campus of about 40 acres(161874 m2). All departments & laboratories are housed on the campus. Residential accommodation for teaching & non-teaching staff of the college are available on the campus. Consciously developed, the campus has retained & increased its green cover, rich in natural flora & fauna, & provides an attraction for bird watchers.Staff hostelThe college provides residential facilities for both undergraduate boys and girls
''',
                    boxColor: shade2,
                    font_size: 13),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: SizedBox(
                    width: 400,
                    height: 200,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset('assets/images/gcek2.png')),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                buildCustomContainer3(
                  374,
                  font_size: 15,
                  text: "Institude Vision",
                  boxColor: shade1,
                  font_color: const Color.fromARGB(255, 255, 255, 255),
                ),
                buildCustomContainer3(374,
                    text:
                        '''
To emerge as a technical institution of national repute, driven by excellence in imparting value-based education and innovation in research; to face global needs of the profession
''',
                    font_size: 13),
                SizedBox(
                  height: 10,
                ),
                buildCustomContainer(
                  50,
                  374,
                  font_size: 15,
                  text: "Institude Mission",
                  boxColor: shade1,
                  font_color: const Color.fromARGB(255, 255, 255, 255),
                ),
                buildCustomContainer3(374,
                    text:
                        '''
>> To achieve academic excellence by providing highest quality of education, recourses and infrastructure.
>> To inculcate scientific, technological and managerial skills through new technologies, methodologies, disciplines  recourses and even attitudes.
>> To create scientific, technological, and cultural awareness amongst students and public at large.
>> To aim at total upliftment of society with focus on academic excellence.
''',
                    font_size: 13),
                SizedBox(
                  height: 10,
                ),
                buildCustomContainer(
                  50,
                  374,
                  font_size: 15,
                  text: "Institude Objective",
                  boxColor: shade1,
                  font_color: const Color.fromARGB(255, 255, 255, 255),
                ),
                buildCustomContainer3(374,
                    text:
                        '''
>> To provide technical education of highest standards to all classes of society including economically and socially  backward sections of society.
>>  To provide trained and skilled engineers and technocrats to the society.
>> To promote sense of equality, national integration, social justice amongst students and to act as catalyst in socio-techno- economic transformations for national developments.
>> To accept challenges of globalization.
>> To inculcate values like social equality, feeling of brotherhood and self help.
'''),
                SizedBox(
                  height: 10,
                ),
                buildCustomContainer(
                  50,
                  374,
                  font_size: 15,
                  text: "Short Range Goals",
                  boxColor: shade1,
                  font_color: const Color.fromARGB(255, 255, 255, 255),
                ),
                buildCustomContainer3(374,
                    text:
                        '''
>> To introduce new courses of appropriate and sustainable technology relevant to the needs of time.
>>   To provide testing and consultancy services on a larger scale.
>> To achieve 100% placement of student.
>> To be identified as a "Research centre
'''),
                const SizedBox(
                  height: 30,
                ),
                buildCustomContainer(
                  50,
                  374,
                  font_size: 15,
                  text: "Principal",
                  boxColor: shade1,
                  font_color: const Color.fromARGB(255, 255, 255, 255),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset('assets/images/hod2.png'),
                      ),
                    ),
                    Center(
                      child: Container(
                        child: const Text(
                          'Dr. Sanjeev J. Wagh',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    buildCustomContainer(
                      50,
                      374,
                      font_size: 15,
                      text: "Pricipal's Message",
                      boxColor: shade1,
                      font_color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    buildCustomContainer3(374,
                        text:
                            "We at Government College of Engineering, Karad, are committed to produce outstanding engineers, with sound theoretical and practical knowledge, exposure to industry and respect for human values."),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
          )
          // This trailing comma makes auto-formatting nicer for build methods.
          ),
    );
  }
}
