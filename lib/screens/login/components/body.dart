import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leimena/components/rounded_button.dart';
import 'package:leimena/components/rounded_input_field.dart';
import 'package:leimena/components/rounded_password_field.dart';
import 'package:leimena/constants.dart';
import 'package:leimena/screens/login/components/background.dart';
import 'package:leimena/screens/home/home_screen.dart';
import 'package:leimena/components/already_have_an _account_acheck.dart';
import 'package:leimena/screens/signup/signup_screen.dart';
import 'package:leimena/screens/scan/scan_screen.dart';

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
              "Sign In",
              style: GoogleFonts.lato(
                color: kForthColor,
                fontSize: 35,
              ),
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              color: kForthColor,
              textColor: kTextColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ScanScreen();
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
