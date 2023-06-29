import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  static final Color backgroundColor = Color.fromARGB(255, 30, 24, 68);

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
        Row(
          children: [
            const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 89, 85, 152),
              radius: 22,
              child: Icon(
                Icons.notification_add,
                size: 25,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AddTaskWidget(backgroundColor: backgroundColor);
                    });
              },
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 89, 85, 152),
                radius: 22,
                child: Icon(
                  Icons.add,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class AddTaskWidget extends StatelessWidget {
  const AddTaskWidget({
    super.key,
    required this.backgroundColor,
  });

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Add Task",
        style: GoogleFonts.lato(
            color: backgroundColor, fontWeight: FontWeight.w600),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintStyle: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 83, 83, 83)),
                    hintText: "Tittle"),
              ),
              TextField(
                decoration: InputDecoration(
                    hintStyle: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 83, 83, 83)),
                    hintText: "Description"),
              ),
              TextField(
                decoration: InputDecoration(
                    hintStyle: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 83, 83, 83)),
                    hintText: "Timing"),
              ),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Cancel",
            style: GoogleFonts.lato(
                color: backgroundColor,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(backgroundColor)),
            onPressed: () {
              Navigator.pop(context);
              printTaost(context, "Task Added Successfully !!");
            },
            child: Text(
              "Add",
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )),
      ],
    );
  }

  static void printTaost(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        backgroundColor: CustomAppBar.backgroundColor,
        content: Text(
          text,
          style: GoogleFonts.lato(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
