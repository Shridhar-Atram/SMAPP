import 'package:flutter/material.dart';
import 'package:trial1/screens/dashboard.dart';
import 'main.dart';

class document extends StatelessWidget {
  const document({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Documents',
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
                SizedBox(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                ),
                buildCustomContainer(
                    50, MediaQuery.of(context).size.width * 0.95,
                    text: 'Select Your Category',
                    boxColor: shade1,
                    font_color: const Color.fromARGB(255, 255, 255, 255),
                    font_size: 15),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => caste(
                                'OPEN Category', el1, _open, 'Not Required')),
                      );
                    },
                    child:
                        buildCustomContainer(50, 374, text: 'OPEN Category')),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => caste('TFWS Category', el1,
                              _open, 'Income Certificate (less than 8 lacks)'),
                        ),
                      );
                    },
                    child:
                        buildCustomContainer(50, 374, text: 'TFWS Category')),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => caste('EBC Category', el1,
                              _open, 'Income Certificate (less than 8 lacks)'),
                        ),
                      );
                    },
                    child: buildCustomContainer(50, 374, text: 'EBC Category')),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => caste(
                                'OBC Category',
                                el2,
                                _obc,
                                'Income Certificate (less than 8 lacks)')),
                      );
                    },
                    child: buildCustomContainer(50, 374, text: 'OBC Category')),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => caste('SC / ST Category', el2,
                                _scst, 'Not Required')),
                      );
                    },
                    child: buildCustomContainer(50, 374,
                        text: 'SC / ST Category')),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => caste(
                                'EWS Category', el2, _ews, 'Not Required')),
                      );
                    },
                    child: buildCustomContainer(50, 374, text: 'EWS Category')),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => caste(
                                'SBC / VJ / NT ',
                                el2,
                                _obc,
                                'Income Certificate (less than 8 lacks)')),
                      );
                    },
                    child: buildCustomContainer(50, 374,
                        text: 'SBC / VJ / NT Category')),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => caste(
                                'Type - C Category', el1, _C, 'Not Required')),
                      );
                    },
                    child:
                        buildCustomContainer(50, 374, text: 'Type-C Category')),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => caste(
                                'Type - D Category', el1, _D, 'Not Required')),
                      );
                    },
                    child:
                        buildCustomContainer(50, 374, text: 'Type-D Category')),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => caste(
                                'Type - E Category', el1, _E, 'Not Required')),
                      );
                    },
                    child:
                        buildCustomContainer(50, 374, text: 'Type-E Category')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<String> _open = [
  'SSC Marksheet',
  'HSC Marksheet',
  'MHT-CET / JEE Marksheet',
  'Leaving Certificate',
  'Nationality Certificate',
  'Domicile Certificate'
];
List<String> _C = [
  'SSC Marksheet',
  'HSC Marksheet',
  'MHT-CET / JEE Marksheet',
  'Leaving Certificate',
  'Nationality Certificate',
  'Domicile Certificate',
  'Certificate from Performa A'
];
List<String> _D = [
  'SSC Marksheet',
  'HSC Marksheet',
  'MHT-CET / JEE Marksheet',
  'Leaving Certificate',
  'Nationality Certificate',
  'Domicile Certificate',
  'Certificate from Performa B'
];
List<String> _E = [
  'SSC Marksheet',
  'HSC Marksheet',
  'MHT-CET / JEE Marksheet',
  'Leaving Certificate',
  'Nationality Certificate',
  'Domicile Certificate',
  'Certificate from Performa C'
];
List<String> _ews = [
  'SSC Marksheet',
  'HSC Marksheet',
  'MHT-CET / JEE Marksheet',
  'Leaving Certificate',
  'Nationality Certificate',
  'Domicile Certificate',
  'EWS Certificate'
];
List<String> _obc = [
  'SSC Marksheet',
  'HSC Marksheet',
  'MHT-CET / JEE Marksheet',
  'Leaving Certificate',
  'Nationality Certificate',
  'Domicile Certificate',
  'Caste Certificate',
  'Caste Validity Certificate',
  'Non-Creamy Layer Certificate'
];
List<String> _scst = [
  'SSC Marksheet',
  'HSC Marksheet',
  'MHT-CET / JEE Marksheet',
  'Leaving Certificate',
  'Nationality Certificate',
  'Domicile Certificate',
  'Caste Certificate',
  'Caste Validity Certificate'
];
String el1 =
    '''- minimum 45% marks in Physics, Mathematics, Chemistry/Biology/Vocational Subjects in HSC
      - Appered in MHT-CET or JEE-Mains (Paper 1)''';

String el2 =
    '''- minimum 40% marks in Physics, Mathematics, Chemistry/Biology/Vocational Subjects in HSC
      - Appered in MHT-CET or JEE-Mains (Paper 1)''';

@immutable
class caste extends StatelessWidget {
  final String category_name, eligibility, income;
  final List<String> docs;
  caste(this.category_name, this.eligibility, this.docs, this.income);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title: Text(
            category_name.toString(),
            style: const TextStyle(
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            color: shade4,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  buildCustomContainer(
                    50,
                    MediaQuery.of(context).size.width * 0.85,
                    text: 'Eligibility Crieteria',
                    font_size: 15,
                    boxColor: shade1,
                    font_color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  buildCustomContainer(
                    150,
                    MediaQuery.of(context).size.width * 0.85,
                    text: '$eligibility',
                    font_size: 15,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buildCustomContainer(
                    50,
                    MediaQuery.of(context).size.width * 0.85,
                    text: 'Income Certificate',
                    font_size: 15,
                    boxColor: shade1,
                    font_color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  buildCustomContainer(
                    50,
                    MediaQuery.of(context).size.width * 0.85,
                    text: income,
                    font_size: 15,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buildCustomContainer(
                    50,
                    MediaQuery.of(context).size.width * 0.85,
                    text: 'Documents Requried',
                    font_size: 15,
                    boxColor: shade1,
                    font_color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 480,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: docs.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              buildCustomContainer(50, 374,
                                  text: docs[index].toString()),
                              SizedBox(
                                height: 2,
                              ),
                            ],
                          );
                        }),
                  ),
                  SizedBox(
                    height: 10,
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
