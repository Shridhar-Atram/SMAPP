import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trial1/screens/dashboard.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';

class campus extends StatelessWidget {
  const campus({super.key});

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
              'Clubs',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const clubs()));
                  },
                  child: buildCustomContainer(150, 120,
                      text: "College Clubs",
                      image_path: "assets/images/club.png")),
              buildCustomContainer(150, 120,
                  text: "Cultural Activites",
                  image_path: "assets/images/cultural.png",
                  image_size: 2),
              buildCustomContainer(150, 120,
                  text: "Sports Activites",
                  image_path: "assets/images/sports.png",
                  image_size: 1),
            ],
          ),
        ),
      ),
    );
  }
}

class clubs extends StatelessWidget {
  const clubs({super.key});

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
              'Clubs',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
        ),
        backgroundColor: Color(0xFFf2e9e4),
        body: Container(
          color: Color(0xFFf2e9e4),
          margin: const EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          // builder: (context) => alpha()
                          builder: (context) => _club(
                              'Alphageeks',
                              alphageeks_logo,
                              'alpha',
                              alphageeks_info,
                              16,
                              alphageeks_pic_path,
                              alphageeks_insta)));
                },
                child: Hero(
                  tag: 'alpha',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.black,
                        ),
                        Image.asset(
                          'assets/images/clubs/logo/alphageeks.png',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _club(
                                'GDSC',
                                gdsc_logo,
                                'gdsc',
                                gdsc_info,
                                7,
                                gdsc_pic_path,
                                gdsc_insta)));
                  },
                  child: Hero(
                      tag: 'gdsc',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/clubs/logo/gdsc.jpg',
                          fit: BoxFit.cover,
                        ),
                      ))),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _club(
                                'Defence Club',
                                defence_logo,
                                'defence',
                                defence_info,
                                4,
                                defence_pic_path,
                                defence_insta)));
                  },
                  child: Hero(
                      tag: 'defence',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/clubs/logo/defence.jpg',
                          fit: BoxFit.cover,
                        ),
                      ))),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _club(
                              'Yoga Club',
                              yoga_logo,
                              'yoga',
                              yoga_info,
                              12,
                              yoga_pic_path,
                              yoga_insta)));
                },
                child: Hero(
                  tag: 'yoga',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.white,
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/clubs/logo/yoga.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _club(
                                'Pixel Club',
                                pixel_logo,
                                'pixel',
                                pixel_info,
                                5,
                                pixel_pic_path,
                                pixel_insta)));
                  },
                  child: Hero(
                      tag: 'pixel',
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                              'assets/images/clubs/logo/pixel.jpg')))),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _club(
                              'Tiffan',
                              tiffan_logo,
                              'tiffan',
                              tiffan_info,
                              12,
                              tiffan_pic_path,
                              tiffan_insta)));
                },
                child: Hero(
                  tag: 'tiffan',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.black,
                        ),
                        Image.asset('assets/images/clubs/logo/tiffan.png')
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _club(
                                'House of Arts Club',
                                arts_logo,
                                'arts',
                                arts_info,
                                15,
                                arts_pic_path,
                                arts_insta)));
                  },
                  child: Hero(
                      tag: 'arts',
                      child: Stack(
                        children: [
                          Container(
                            color: Colors.white38,
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Stack(
                                children: [
                                  Container(
                                    color: Colors.white,
                                  ),
                                  Image.asset(
                                      'assets/images/clubs/logo/arts.png')
                                ],
                              ))
                        ],
                      ))),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _club(
                                'SAE BAJA',
                                baja_logo,
                                'baja',
                                baja_info,
                                12,
                                baja_pic_path,
                                baja_insta)));
                  },
                  child: Hero(
                      tag: 'baja',
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                              'assets/images/clubs/logo/baja.jpg')))),
            ],
          ),
        ),
      ),
    );
  }
}

String alphageeks_logo = 'assets/images/clubs/logo/alphageeks.png';
String alphageeks_info =
    '''
    Alphageeks is a community of coders of Government College of Engineering, Karad. This coding club organizes events and sessions from Alumni, coders, mentors. Sessions are taken by coding club members by inviting external or within community people.
    This coding club aims to provide opportunities for students to make practical use of their learning. It is open platform for aspiring coders to come together to help each other. 
    We have two primary objectives-
    One of which is to convince students of the importance of data structures and algorithms from the very first year and to create a lasting competitive coding culture in student organizations.
    The second goal is to get GCEK teams to participate in competitions like ACM ICPC, etc.
    We strive to increase student participation and performance in competative programming. Our college students are recognized for our coding skills.
\nClub Achivements:
- Sent two team for ACM-ICPC competition
- Ranked AIR 109 in ICPC Amritapuri Regionals

''';
String alphageeks_pic_path = 'assets/images/clubs/alphageeks/';
String alphageeks_insta = 'https://www.instagram.com/gcek_alphageeks/';

String gdsc_logo = 'assets/images/clubs/logo/gdsc.jpg';
String gdsc_info =
    '''
Google Developer Student Clubs are university based community groups for students interested in Google developer technologies. Students from all undergraduate or graduate programs with an interest in growing as a developer are welcome. By joining a GDSC, students grow their knowledge in a peer-to-peer learning environment and build solutions for local businesses and their community.
It is the first year of GDSC at GCEK with a objective of developing various skills and their interest in upcoming technologies at our campus.
Founder:
Tejal Prashant Yawalkar 
President / Head:
Tejal Prashant Yawalkar (GDSC LEAD 2022-23)
Activities held till date:
1.Compose Camp:
It is a series of sessions focusing on android app development using kotlin.
Sessions covered from basics of Kotlin to deploying an Android Application
23rd  September  -  Basics of android 
5th October - Introduction to Android App
5th October - Development of Android App

2.Cloud Career Practitioners Pathway:
It is a Course provided by GDSC focusing on Cloud concepts 

Duration  -   14th November to 30 December 2022

3.Introduction to Cloud and DevOps
Series of sessions to kick start a new technology and explore career opportunities
Date : 25th February 2023

4.Web Campaign:
          GDSC is back with its another amazing session on HTML and CSS.
         Learn how to code and design your website.
         Date : 12th March 2023
5.Machine Learning
Date : 14th April 2023

''';
String gdsc_pic_path = 'assets/images/clubs/gdsc/';
String gdsc_insta = 'https://www.instagram.com/gdsc_gcek/';

String defence_logo = 'assets/images/clubs/logo/defence.jpg';
String defence_info =
    '''
The Defence Club of GCE Karad is established to provide a common platform to all the defence aspirants. In order to prepare defence aspirants to become officers in the Army, Navy, Air Force, Coast Guard and CAPF. The defence club arranges various sessions for leadership training, defence examination preparation (CDS,AFCAT,INET,CAPF), Service Selection Board (SSB) interview training, self defence and adventure activities. The club members are always enthusiastic towards the preparation. Due to their hard work and dedication they have cleared the defence examination.
Defence club is about group of students who have strong desire to join Indian Armed Forces and serve the Nation.The main objective of this Club is to inculcate Officer's like qualities by conducting different activities throughout the year.We have conducted Psychological tests Practice, Group Discussions, Lecturettes and Current Affairs Discussions.Our daily sessions timing is from 6.30 AM to 8.30 AM in which we do physical exercise and then SSB and Written Exams Preparation. \n

Club Achievers:

Vaibhav Ajit Karne
Achievements: 
- Recommended for INDIAN AIRFORCE and INDIAN ARMY.
- AIR 1 - SSC TECH Army
- Joined Officers Training Academy in November, 2022 
- AIR 200- IAF through AFCAT Examination 
- Joined Airforce Academy in December, 2022\n

Kedar Parandwal
Cleared AFCAT Exam 4 times And qualified for SSB interview
Qualified for SSC Tech Army interview...
Qualified 2 times for Indian Coast Gaurd SSB interview..\n

Vishwajeet Patil
Cleared CDS Exam 2-3 times qualified for SSB interview
Cleared AFCAT written Examination and qualified for SSB interview
Qualified for SSC TECH Army Interview\n

Pratiksha Sanjay Patil
Cleared AFCAT 2 2022 qualified for SSB Interview
Qualified for SSC TECH ARMY and NAVY direct SSB interview\n

Vishal Kothavale
Qualified for SSC TECH ARMY and NAVY direct SSB interview\n

Mayuri Barakde
Qualified for SSC TECH NAVY SSB interview (Conference Out)\n

Arpita Dake
Qualified for SSC TECH ARMY and NAVY direct SSB interview\n

Aditi Dhigare
Qualified for SSC TECH ARMY and NAVY direct SSB interview\n

Vimalkumar Kamble
Cleared CDS 2 2022 Written Examination.\n

''';
String defence_pic_path = 'assets/images/clubs/defence/';
String defence_insta = 'https://www.instagram.com/defence_club_gcek/';

String yoga_logo = 'assets/images/clubs/logo/yoga.png';
String yoga_info =
    '''
Yoga Club is dedicated to the practice of yoga and Meditation. We practice poses while learning about the practices of yoga and how yoga can be used to manage stress, improve the mind-body
connection, and increase strength and flexibility. We also arrange
different sessions on Yoga that will help to the students and
faculties too.
Events conducted are Yoga Competition, Yoga Day Workshop,
Yoga Mediatation Workshop.

''';
String yoga_pic_path = 'assets/images/clubs/yoga/';
String yoga_insta = 'https://www.instagram.com/yoga_club_gcek/';

String pixel_logo = 'assets/images/clubs/logo/pixel.jpg';
String pixel_info =
    '''
      Pixel Club is a vibrant and dynamic photography club based at Government College of Engineering, Karad. Established with the aim of fostering a passion for photography, the club provides an inclusive platform for students to explore and showcase their creativity through the lens.
      The club organizes regular meetings, workshops, and photo walks where members can learn new techniques, exchange ideas, and gain valuable insights from experienced photographers. These events cover a wide range of topics, including composition, lighting, post-processing, and storytelling.
      Pixel Club also hosts photography competitions, both within the college and with other photography clubs, to encourage healthy competition and recognize exceptional talent. The club actively participates in various college events, capturing memorable moments and creating a visual chronicle of campus life.
      In addition to the events, Pixel Club maintains an online presence, sharing stunning photographs and informative articles on their website and social media platforms. This allows members to connect with a wider audience and receive constructive feedback on their work.
''';
String pixel_pic_path = 'assets/images/clubs/pixel/';
String pixel_insta = 'https://www.instagram.com/pixelgcek/';

String tiffan_logo = 'assets/images/clubs/logo/tiffan.png';
String tiffan_info =
    '''
The Club was started in 2018. 
Efficycle event consist mainly of 3 segments:
a.conventional 
b.Advanced
c.Effique 

Team name - Hurricane
Vehicle name - Ashwamegha

Achievements-
2018- AIR - 33
2019- AIR - 19
2020- AIR - 3
2021- AIR - 3
2022- AIR - 6

- Achieved BEST BUSINESS PLAN AWARD
- Achived BEST INNOVATION AWARD

''';
String tiffan_pic_path = 'assets/images/clubs/tiffan/';
String tiffan_insta = 'https://www.instagram.com/saegcek/';

String arts_logo = 'assets/images/clubs/logo/arts.png';
String arts_info =
    '''
The art club is to encourage students to express their thoughts,
feelings and creativity through the various visual art forms from two dimensions to three dimensions and conducts workshops on Clay Modelling, Rangoli, Poster making, Painting,Sketching and events like Drawing competition , Shrunkhala,
Rangadhara Landscape competiton.

''';
String arts_pic_path = 'assets/images/clubs/arts/';
String arts_insta = 'https://www.instagram.com/gcek.houseofarts.club/';

String baja_logo = 'assets/images/clubs/logo/baja.jpg';
String baja_info =
    '''
Baja SAE is a Collegiate Design Series competition run by the Society of Automotive Engineers International (SAE International). Teams of students from universities all over the world design and build small off-road cars. The goal in Baja SAE is to design, build and race off-road vehicles that can withstand the harshest elements of rough terrain.

We are Team Demons and we've been participating in M Baja competition for past few seasons now and we are continuously on a journey of discovering and exploring new adventures.
We get a hands on experience in terms of manufacturing our ATV and the competition is such as that it improves our non- technical skills as well.

The competition takes place in these following phases:

Phase 1
The first leg (Phase 1) i.e. Preliminary Round, scheduled in August 2023, focused on the virtual presentation of the ATVs of teams. The Preliminary Round tests the technical and professional capacity of teams over an online platform. The two-day event included a virtual Inauguration, presentations from teams showcasing the finalised design of their buggy.

Phase 2
The second leg involved Virtual Dynamic Events with the help of Automotive Simulation Software combined with Digital Static Events for 2023 edition. This incorporated Virtual Static Events Evaluation such as Design, Cost, Sales Presentation as well as the Dynamic Events such as Maneuverability and All Terrain Performance held virtually through globally benchmarked Automotive Simulation software, IPG CarMaker. The objective of these events is to evaluate the software knowledge, design understanding, cost efficiency and business skills of the participating teams.

Phase 3
The final leg i.e. Phase 3, was conducted physically for mBAJA in February'23. This leg had  a physical evaluation of the buggies of the participating teams. The event included Dynamic Events such as Acceleration Event, Maneuverability Event, Suspension & Traction Event & Endurance Event along with the initial technical evaluation.

''';
String baja_pic_path = 'assets/images/clubs/baja/';
String baja_insta = 'https://www.instagram.com/saegcek/';

class _club extends StatelessWidget {
  final int no_of_images;
  final String title, img_path, info, pic_path, tag, insta_id;
  _club(
      String this.title,
      String this.img_path,
      String this.tag,
      String this.info,
      int this.no_of_images,
      String this.pic_path,
      String this.insta_id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title: Text(
            title.toString(),
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Hero(
              tag: tag.toString(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Center(child: Image.asset(img_path.toString())),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            buildCustomContainer3(374, text: info.toString(), font_size: 13),
            SizedBox(
              height: 5,
            ),
            buildCustomContainer(50, 374,
                text: 'Events and Club Activities',
                boxColor: shade1,
                font_size: 15,
                font_color: Colors.white),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              options: CarouselOptions(height: 300, autoPlay: true),
              itemCount: no_of_images,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          pic_path.toString() +
                              (itemIndex + 1).toString() +
                              '.jpeg',
                          fit: BoxFit.cover,
                        ))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  _launchURL(insta_id.toString());
                },
                child: buildCustomContainer(
                    50, MediaQuery.of(context).size.width * 0.5,
                    text: 'connect us on instagram',
                    boxColor: shade1,
                    font_size: 15,
                    font_color: Colors.white)),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class gdsc extends StatelessWidget {
  const gdsc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        title: const Text("Google Developer Student Club"),
        centerTitle: true,
        backgroundColor: Colors.teal[200],
      ),
      body: Container(
        margin: const EdgeInsets.all(5),
        child: ListView(
          children: [
            Hero(
              tag: 'gdsc',
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/images/clubs/logo/gdsc.jpg')),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white38),
                // borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white60,
                    blurRadius: 15.0,
                  ),
                ],
                color: Colors.white.withOpacity(0.2),
              ),
              // width: MediaQuery.of(context).size.width,
              child: const Text(
                '''
Google Developer Student Clubs are university based community groups for students interested in Google developer technologies. Students from all undergraduate or graduate programs with an interest in growing as a developer are welcome. By joining a GDSC, students grow their knowledge in a peer-to-peer learning environment and build solutions for local businesses and their community.
It is the first year of GDSC at GCEK with a objective of developing various skills and their interest in upcoming technologies at our campus.
Founder:
Tejal Prashant Yawalkar 
President / Head:
Tejal Prashant Yawalkar (GDSC LEAD 2022-23)
Activities held till date:
1.Compose Camp:
It is a series of sessions focusing on android app development using kotlin.
Sessions covered from basics of Kotlin to deploying an Android Application
23rd  September  -  Basics of android 
5th October - Introduction to Android App
5th October - Development of Android App

2.Cloud Career Practitioners Pathway:
It is a Course provided by GDSC focusing on Cloud concepts 

Duration  -   14th November to 30 December 2022

3.Introduction to Cloud and DevOps
Series of sessions to kick start a new technology and explore career opportunities
Date : 25th February 2023

4.Web Campaign:
          GDSC is back with its another amazing session on HTML and CSS.
         Learn how to code and design your website.
         Date : 12th March 2023
5.Machine Learning
Date : 14th April 2023
''',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Poppins'),
              ),
            ),
            CarouselSlider(
              items: ['1', '2', '3', '4', '5', '6', '7'].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    String str = 'assets/images/clubs/gdsc/$i.png';
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Image.asset(
                        str,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(height: 300, autoPlay: true),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  _launchURL('https://www.instagram.com/gdsc_gcek/');
                },
                child: buildCustomContainer(
                    50, MediaQuery.of(context).size.width * 0.5,
                    text: 'click here to follow us on instagram')),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class alpha extends StatelessWidget {
  const alpha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2e9e4),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
          backgroundColor: const Color(0xFF22223b),
          elevation: 0,
          title: const Text(
            'Alphageeks',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Hero(
              tag: 'alphageeks',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  children: [
                    Container(
                      color: Colors.black,
                      height: MediaQuery.of(context).size.width,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Image.asset('assets/images/clubs/logo/alphageeks.png'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              // margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFc9ada7)),
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.1,
                      blurRadius: 5.0,
                      offset: Offset(0, 7)),
                ],
                color: Color(0xFFc9ada7).withAlpha(500),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  '''   
    Alphageeks is a community of coders of Government College of Engineering, Karad. This coding club organizes events and sessions from Alumni, coders, mentors. Sessions are taken by coding club members by inviting external or within community people.
    This coding club aims to provide opportunities for students to make practical use of their learning. It is open platform for aspiring coders to come together to help each other. 
    We have two primary objectives-
    One of which is to convince students of the importance of data structures and algorithms from the very first year and to create a lasting competitive coding culture in student organizations.
    The second goal is to get GCEK teams to participate in competitions like ACM ICPC, etc.
    We strive to increase student participation and performance in competative programming. Our college students are recognized for our coding skills.
\nClub Achivements:
- Sent two team for ACM-ICPC competition
- Ranked AIR 109 in ICPC Amritapuri Regionals

''',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Poppins'),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            buildCustomContainer(50, 374, text: 'Alpha Geeks Sessions'),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
              items: ['1', '2', '3', '4', '5', '6', '7'].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    String str = 'assets/images/clubs/alphageeks/$i.jpeg';
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Image.asset(
                        str,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(height: 300, autoPlay: true),
            ),
            const SizedBox(
              height: 20,
            ),
            buildCustomContainer(50, 374, text: 'Past Events'),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
              items: ['1', '2', '3', '4', '5', '6', '7', '8', '9'].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    String str = 'assets/images/clubs/alphageeks/events/$i.jpg';
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Image.asset(
                        str,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(height: 300, autoPlay: true),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  _launchURL('https://www.instagram.com/gcek_alphageeks/');
                },
                child: buildCustomContainer(
                    50, MediaQuery.of(context).size.width * 0.5,
                    text: 'connect us on instagram')),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class defence extends StatelessWidget {
  const defence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
        title: const Text("Defence Club"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Hero(
                tag: 'defence',
                child: Image.asset('assets/images/defence_logo.jpg')),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white38),
                // borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white60,
                    blurRadius: 15.0,
                  ),
                ],
                color: Colors.white.withOpacity(0.2),
              ),
              child: const Text(
                '''
The Defence Club of GCE Karad is established to provide a common platform to all the defence aspirants. In order to prepare defence aspirants to become officers in the Army, Navy, Air Force, Coast Guard and CAPF. The defence club arranges various sessions for leadership training, defence examination preparation (CDS,AFCAT,INET,CAPF), Service Selection Board (SSB) interview training, self defence and adventure activities. The club members are always enthusiastic towards the preparation. Due to their hard work and dedication they have cleared the defence examination.
Defence club is about group of students who have strong desire to join Indian Armed Forces and serve the Nation.The main objective of this Club is to inculcate Officer's like qualities by conducting different activities throughout the year.We have conducted Psychological tests Practice, Group Discussions, Lecturettes and Current Affairs Discussions.Our daily sessions timing is from 6.30 AM to 8.30 AM in which we do physical exercise and then SSB and Written Exams Preparation. \n

Club Achievers:

Vaibhav Ajit Karne
Achievements: 
- Recommended for INDIAN AIRFORCE and INDIAN ARMY.
- AIR 1 - SSC TECH Army
- Joined Officers Training Academy in November, 2022 
- AIR 200- IAF through AFCAT Examination 
- Joined Airforce Academy in December, 2022\n

Kedar Parandwal
Cleared AFCAT Exam 4 times And qualified for SSB interview
Qualified for SSC Tech Army interview...
Qualified 2 times for Indian Coast Gaurd SSB interview..\n

Vishwajeet Patil
Cleared CDS Exam 2-3 times qualified for SSB interview
Cleared AFCAT written Examination and qualified for SSB interview
Qualified for SSC TECH Army Interview\n

Pratiksha Sanjay Patil
Cleared AFCAT 2 2022 qualified for SSB Interview
Qualified for SSC TECH ARMY and NAVY direct SSB interview\n

Vishal Kothavale
Qualified for SSC TECH ARMY and NAVY direct SSB interview\n

Mayuri Barakde
Qualified for SSC TECH NAVY SSB interview (Conference Out)\n

Arpita Dake
Qualified for SSC TECH ARMY and NAVY direct SSB interview\n

Aditi Dhigare
Qualified for SSC TECH ARMY and NAVY direct SSB interview\n

Vimalkumar Kamble
Cleared CDS 2 2022 Written Examination.\n
''',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Poppins'),
              ),
            ),
            CarouselSlider(
              items: ['1', '2', '3', '4'].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    String str = 'assets/images/clubs/defence/$i.jpeg';
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Image.asset(
                        str,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(height: 300, autoPlay: true),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  _launchURL('https://www.instagram.com/defence_club_gcek/');
                },
                child: buildCustomContainer(
                    50, MediaQuery.of(context).size.width * 0.5,
                    text: 'click here to follow us on instagram')),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class yoga extends StatelessWidget {
  const yoga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        title: const Text('Yoga Club'),
        centerTitle: true,
        backgroundColor: Colors.teal[200],
      ),
      body: ListView(
        children: [
          Hero(
            tag: 'yoga',
            child: Stack(
              children: [
                Container(
                  color: Colors.white,
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/yoga.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white38),
              // borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white60,
                  blurRadius: 15.0,
                ),
              ],
              color: Colors.white.withOpacity(0.2),
            ),
            // width: MediaQuery.of(context).size.width,
            child: const Text(
              '''
Yoga Club is dedicated to the practice of yoga and Meditation. We practice poses while learning about the practices of yoga and how yoga can be used to manage stress, improve the mind-body
connection, and increase strength and flexibility. We also arrange
different sessions on Yoga that will help to the students and
faculties too.
Events conducted are Yoga Competition, Yoga Day Workshop,
Yoga Mediatation Workshop.
''',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Poppins'),
            ),
          ),
          CarouselSlider(
            items: [
              '1',
              '2',
              '3',
              '4',
              '5',
              '6',
              '7',
              '8',
              '9',
              '10',
              '11',
              '12'
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  String str = 'assets/images/clubs/yoga/$i.jpg';
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Image.asset(
                      str,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(height: 300, autoPlay: true),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: () {
                _launchURL('https://www.instagram.com/yoga_club_gcek/');
              },
              child: buildCustomContainer(
                  50, MediaQuery.of(context).size.width * 0.5,
                  text: 'click here to follow us on instagram')),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class pixel extends StatelessWidget {
  const pixel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        title: const Text("Pixel Club"),
        centerTitle: true,
        backgroundColor: Colors.teal[200],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Hero(
                tag: 'pixel',
                child: Image.asset('assets/images/clubs/pixel/1.jpg')),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white38),
                // borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white60,
                    blurRadius: 15.0,
                  ),
                ],
                color: Colors.white.withOpacity(0.2),
              ),
              child: const Text(
                '''
      Pixel Club is a vibrant and dynamic photography club based at Government College of Engineering, Karad. Established with the aim of fostering a passion for photography, the club provides an inclusive platform for students to explore and showcase their creativity through the lens.
      The club organizes regular meetings, workshops, and photo walks where members can learn new techniques, exchange ideas, and gain valuable insights from experienced photographers. These events cover a wide range of topics, including composition, lighting, post-processing, and storytelling.
      Pixel Club also hosts photography competitions, both within the college and with other photography clubs, to encourage healthy competition and recognize exceptional talent. The club actively participates in various college events, capturing memorable moments and creating a visual chronicle of campus life.
      In addition to the events, Pixel Club maintains an online presence, sharing stunning photographs and informative articles on their website and social media platforms. This allows members to connect with a wider audience and receive constructive feedback on their work.
      
      ''',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
            CarouselSlider(
              items: ['1', '2', '3', '4', '5'].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    String str = 'assets/images/clubs/pixel/$i.jpeg';
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Image.asset(
                        str,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(height: 300, autoPlay: true),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  _launchURL('https://www.instagram.com/pixelgcek/');
                },
                child: buildCustomContainer(
                    50, MediaQuery.of(context).size.width * 0.5,
                    text: 'click here to follow us on instagram')),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class tiffan extends StatelessWidget {
  const tiffan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        title: const Text("Tiffan"),
        centerTitle: true,
        backgroundColor: Colors.teal[200],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Hero(
              tag: 'tiffan',
              child: Stack(
                children: [
                  Container(
                    color: Colors.black,
                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Image.asset('assets/images/clubs/tiffan/logo.png')
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: const Text(
                '''
The Club was started in 2018. 
Efficycle event consist mainly of 3 segments:
a.conventional 
b.Advanced
c.Effique 

Team name - Hurricane
Vehicle name - Ashwamegha

Achievements-
2018- AIR - 33
2019- AIR - 19
2020- AIR - 3
2021- AIR - 3
2022- AIR - 6

- Achieved BEST BUSINESS PLAN AWARD
- Achived BEST INNOVATION AWARD
''',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
              items: [
                '1',
                '2',
                '3',
                '4',
                '5',
                '6',
                '7',
                '8',
                '9',
                '10',
                '11',
                '12'
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    String str = 'assets/images/clubs/tiffan/$i.jpg';
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Image.asset(
                        str,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(height: 300, autoPlay: true),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class arts extends StatelessWidget {
  const arts({super.key});
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('URL NOT FOUND');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        title: const Text("House of Arts"),
        centerTitle: true,
        backgroundColor: Colors.teal[200],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Hero(
                tag: 'arts',
                child: Stack(
                  children: [
                    Container(
                      color: Colors.white38,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                    ),
                    Image.asset('assets/images/clubs/houseofarts/logo.png'),
                  ],
                )),
            Container(
              color: Colors.white38,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 10),
              child: const Text(
                '''
The art club is to encourage students to express their thoughts,
feelings and creativity through the various visual art forms from two dimensions to three dimensions and conducts workshops on Clay Modelling, Rangoli, Poster making, Painting,Sketching and events like Drawing competition , Shrunkhala,
Rangadhara Landscape competiton.
''',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            buildCustomContainer(50, MediaQuery.of(context).size.width * 0.5,
                text: 'Art'),
            const SizedBox(
              height: 10,
            ),
            CarouselSlider(
              items: ['1', '2', '3', '4', '5'].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    String str = 'assets/images/clubs/houseofarts/$i.jpg';
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Image.asset(
                        str,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(height: 300, autoPlay: true),
            ),
            const SizedBox(
              height: 10,
            ),
            buildCustomContainer(50, MediaQuery.of(context).size.width * 0.5,
                text: 'Events'),
            const SizedBox(
              height: 10,
            ),
            CarouselSlider(
              items:
                  ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    String str =
                        'assets/images/clubs/houseofarts/events/$i.jpeg';
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Image.asset(
                        str,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(height: 300, autoPlay: true),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  _launchURL(
                      'https://www.instagram.com/gcek.houseofarts.club/');
                },
                child: buildCustomContainer(
                    50, MediaQuery.of(context).size.width * 0.5,
                    text: 'follow us on instagram')),
            const SizedBox(
              height: 10,
            ),
            // GestureDetector(
            //                 onTap: (){
            //                   _launchURL('https://www.linkedin.com/school/government-college-of-engineering-karad-official/');
            //                 },
            //                 child: Image.asset(
            //                   'assets/images/linkedin.png',
            //                   scale: 14,
            //                 ),
            //               ),
          ],
        ),
      ),
    );
  }
}

class baja extends StatelessWidget {
  const baja({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        title: const Text("Baja"),
        centerTitle: true,
        backgroundColor: Colors.teal[200],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Hero(
                tag: 'baja',
                child: Stack(
                  children: [
                    Container(
                      color: Colors.white38,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                    ),
                    Image.asset('assets/images/clubs/baja/2.jpg'),
                  ],
                )),
            Container(
              color: Colors.white38,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 10),
              child: const Text(
                '''
BAJA Club
''',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
              ),
            ),
            CarouselSlider(
              items: ['1'].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    String str = 'assets/images/clubs/baja/$i.heic';
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Image.asset(
                        str,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(height: 300, autoPlay: true),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('URL NOT FOUND');
  }
}
