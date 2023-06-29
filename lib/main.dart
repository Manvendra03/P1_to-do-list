import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/widgets/Cardd.dart';
import 'package:to_do_list/widgets/custom_app_bar.dart';
import 'package:to_do_list/widgets/day_widget.dart';
import 'package:to_do_list/widgets/other.dart';
import 'package:to_do_list/widgets/progress_bar.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
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
                        title: "Repair Aeroplane",
                        description: "Add seats and gear",
                        time: "9:30 - 2:00",
                        cardcolor: Colors.amberAccent,
                      ),
                      Cardd(
                        title: "Client Meeting",
                        description:
                            "Rough quaations and details about projects ",
                        time: "11:30 - 3:00",
                        cardcolor: Colors.green,
                      ),
                      Cardd(
                        title: "Cleaning Room",
                        description: "Change Arrangemnet",
                        time: "",
                        cardcolor: Colors.blue,
                      ),
                      Cardd(
                        title: "Market",
                        description: "Buying vegitable",
                        time: "4:30 - 5:00",
                        cardcolor: Colors.purple,
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
