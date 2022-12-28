import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class homebuilder extends StatelessWidget {
  final title;
  final image;
  final location;
  final open;
  final closes;
  final index;

  const homebuilder(
      {super.key,
      this.title,
      this.image,
      this.location,
      this.open,
      this.closes,
      this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 10,
          shadowColor: Colors.black,
          color: Color(0xFF1E56A0),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset('$image'),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Text(
                        'Location: $location',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFFFFFFF),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Text(
                        'open: $open - $closes',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('$title',
                    style: GoogleFonts.righteous(
                      fontWeight: FontWeight.normal,
                      fontSize: 32,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ))
              ],
            ),
          ),
        ),
        onTap: () {
          // GoRouter.of(context).go('/Detail/$index');
          GoRouter.of(context).go('/Detail');

        },
      ),
    );
  }
}
