import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leimena/constants.dart';
import 'package:leimena/components/rounded_button.dart';
import 'package:leimena/screens/welcome/components/background.dart';
import 'package:leimena/screens/login/login_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(
                left: 50,
                right: kDefaultPadding,
              ),
                child: Text(
                  "Selamat Pagi, SIRS",
                  style: GoogleFonts.lato(
                    color: kForthColor,
                    fontSize: 35,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
              ),
                child: Text(
                  "Manage you Attendance Here!",
                  style: GoogleFonts.lato(
                    color: kThirdColor,
                    letterSpacing: 2,
                  ),
                ),
              ),
              SizedBox(
                  height: size.height * 0.08,
              ),
              RoundedButton(
                text: "Get Started",
                color: kForthColor,
                textColor: kTextColor,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
    );
  }
}