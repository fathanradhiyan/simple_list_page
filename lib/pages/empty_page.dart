import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.network(
            'https://assets1.lottiefiles.com/private_files/lf30_uqcbmc4h.json'),
        Text(
          'Empty List'.toUpperCase(),
          style: GoogleFonts.mcLaren(
              color: Colors.deepPurpleAccent,
              fontSize: 36,
              fontWeight: FontWeight.bold),
        )
      ],
    ));
  }
}
