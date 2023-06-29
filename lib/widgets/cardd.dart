import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/widgets/custom_app_bar.dart';

// ignore: must_be_immutable
class Cardd extends StatelessWidget {
  static final Color backgroundColor = Color.fromARGB(255, 30, 24, 68);

  Color cardcolor;
  String title;
  String description;
  String time;
  Cardd({
    required this.title,
    required this.description,
    required this.time,
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
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
                Text(
                  description,
                  maxLines: 2,
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 55, 54, 54),
                    // fontWeight: FontWeight.w800,
                    fontSize: 13,
                  ),
                ),
                Text(
                  time,
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

          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Repair Aeroplane "),
                        content: Text("Add seats and gear and check speed "),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Mark as Done",
                              style: GoogleFonts.lato(
                                  color: backgroundColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      backgroundColor)),
                              onPressed: () {
                                Navigator.pop(context);
                                AddTaskWidget.printTaost(
                                    context, "Task Removed !!");
                              },
                              child: Text(
                                "Delete Task",
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      );
                    });
              },
              child: const Icon(
                Icons.more_vert_sharp,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
