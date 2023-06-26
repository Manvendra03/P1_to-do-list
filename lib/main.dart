import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String img =
      "https://i.pinimg.com/originals/a6/58/32/a65832155622ac173337874f02b218fb.png";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 30, 24, 68),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                CustomAppBar(img: img),
                const SizedBox(
                  height: 60,
                ),
                NameText(
                  text: "Hello",
                ),
                NameText(
                  text: "Manvendra",
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DayWidget(
                        upperText: "Today's Monday",
                        lowerText: "Dec 12,2023",
                      ),
                      DayWidget(
                        upperText: "75% Done",
                        lowerText: "Completed Tasks",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  height: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TotalTask(),
                          Text(
                            "10/12",
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const ProgressBar(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),

                //here the to-do Container beging .... !!
                Container(
                  height: 1000,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      Cardd(
                        cardcolor: Colors.amberAccent,
                      ),
                      Cardd(
                        cardcolor: Colors.red,
                      ),
                      Cardd(
                        cardcolor: Colors.blue,
                      ),
                      Cardd(
                        cardcolor: Colors.green,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Cardd extends StatelessWidget {
  Color cardcolor;
  Cardd({
    required this.cardcolor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.all(3),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          color: cardcolor.withOpacity(.7),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Inner Text Column
          Container(
            height: 105,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Repair Notary Application ",
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Login Page and Firebase Connectivity ....",
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 55, 54, 54),
                    // fontWeight: FontWeight.w800,
                    fontSize: 13,
                  ),
                ),
                Text(
                  "12:30 PM - 2:30 PM",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          //
          // Menu

          const Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Icon(
              Icons.more_vert_sharp,
              size: 25,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 6,
    );
  }
}

class TotalTask extends StatelessWidget {
  const TotalTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      child: Text(
        "12 Tasks",
        style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 30, 24, 68),
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          child: Image.network(img),
        ),
        const Row(
          children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 89, 85, 152),
              radius: 22,
              child: Icon(
                Icons.notification_add,
                size: 25,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 89, 85, 152),
              radius: 22,
              child: Icon(
                Icons.add,
                size: 25,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class NameText extends StatelessWidget {
  String text;
  NameText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
          color: Colors.white, fontSize: 50, fontWeight: FontWeight.w500),
    );
  }
}

class DayWidget extends StatelessWidget {
  final String upperText;
  final String lowerText;
  DayWidget({
    Key? key,
    required this.upperText,
    required this.lowerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          upperText,
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
        Text(
          lowerText,
          style: GoogleFonts.lato(
            color: Color.fromARGB(255, 144, 140, 188),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

// Container(
//                         margin: EdgeInsets.all(3),
//                         height: 100,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                             color: Colors.blue.withOpacity(.8),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(15))),
//                       ),
//                       Container(
//                         margin: EdgeInsets.all(3),
//                         height: 100,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                             color: Colors.red.withOpacity(.8),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(15))),
//                       ),
//                       Container(
//                         margin: EdgeInsets.all(3),
//                         height: 100,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                             color: Color.fromARGB(255, 89, 85, 152)
//                                 .withOpacity(.8),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(15))),
//                       ),
