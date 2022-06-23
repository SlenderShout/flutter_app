import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sadece bir tık uzağında',
      style: GoogleFonts.lobster(
        fontSize: 18,
        color: const Color(0xffefebe9),
      ),
    );
  }
}