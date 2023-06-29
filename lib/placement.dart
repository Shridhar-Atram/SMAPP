import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:trial1/screens/dashboard.dart';
import 'main.dart';

class PlacementPage extends StatelessWidget {
  const PlacementPage({super.key});

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
              'Placement Record',
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
            height: 1000,
            width: 1000,
            color: Color(0xFFf2e9e4),
            child: SingleChildScrollView(
              physics:
                  const AlwaysScrollableScrollPhysics(), // Added physics property

              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  GridView.count(
                    childAspectRatio: 2.0,
                    shrinkWrap: true, // Added shrinkWrap property
                    physics: const NeverScrollableScrollPhysics(),
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: [
                      // InkWell(
                      //     onTap: () => viewPdf(),
                      //     child: buildCustomContainer(text: '2022-2023')),
                      GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const pdfView('22-23'))),
                          child: buildCustomContainer1(70, 374,
                              text: '2022-2023', font_size: 15)),
                      GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const pdfView('21-22'))),
                          child: buildCustomContainer1(70, 374,
                              text: '2021-2022', font_size: 15)),
                      GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const pdfView('20-21'))),
                          child: buildCustomContainer1(70, 374,
                              text: '2020-2021', font_size: 15)),
                      GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const pdfView('19-20'))),
                          child: buildCustomContainer1(70, 374,
                              text: '2019-2020', font_size: 15)),
                      GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const pdfView('18-19'))),
                          child: buildCustomContainer1(70, 374,
                              text: '2018-2019', font_size: 15)),
                      GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const pdfView('17-18'))),
                          child: buildCustomContainer1(70, 374,
                              text: '2017-2018', font_size: 15)),
                      GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const pdfView('16-17'))),
                          child: buildCustomContainer1(70, 374,
                              text: '2016-2017', font_size: 15)),
                      GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const pdfView('15-16'))),
                          child: buildCustomContainer1(70, 374,
                              text: '2015-2016', font_size: 15)),
                      GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const pdfView('14-15'))),
                          child: buildCustomContainer1(70, 374,
                              text: '2014-2015', font_size: 15)),
                      GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const pdfView('13-14'))),
                          child: buildCustomContainer1(70, 374,
                              text: '2013-2014', font_size: 15)),
                    ],
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

class pdfView extends StatefulWidget {
  final year;
  const pdfView(this.year, {super.key});

  @override
  State<pdfView> createState() => _pdfViewState();
}

class _pdfViewState extends State<pdfView> {
  @override
  Widget build(BuildContext context) {
    String name = "${"assets/pdfs/" + widget.year}.pdf";
    return SafeArea(
      child: Scaffold(
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
              'Year 20' + widget.year,
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
        ),
        body: SfPdfViewer.asset(name),
        backgroundColor: const Color(0xFFf2e9e4),
      ),
    );
  }
}
