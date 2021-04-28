import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leimena/components/already_have_an _account_acheck.dart';
import 'package:leimena/components/rounded_input_field.dart';
import 'package:leimena/components/rounded_button.dart';
import 'package:leimena/screens/home/components/background.dart';
import 'package:leimena/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 290,
              ),
            ),
            Text(
              "Absensi Kerja",
              style: GoogleFonts.lato(
                color: kForthColor,
                fontSize: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
