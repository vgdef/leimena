import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leimena/components/already_have_an%20_account_acheck.dart';
import 'package:leimena/components/rounded_button.dart';
import 'package:leimena/components/rounded_input_field.dart';
import 'package:leimena/components/rounded_password_field.dart';
import 'package:leimena/components/text_field_container.dart';
import 'package:leimena/constants.dart';
import 'package:leimena/screens/login/login_screen.dart';
import 'package:leimena/screens/signup/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Padding(padding: EdgeInsets.only(
              top: 290,
            ),
            ),
            Text(
              "Sign Up",
              style: GoogleFonts.lato(
                color: kForthColor,
                fontSize: 35,
              ),
            ),
            RoundedInputField(
              hintText: "Your E-mail",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text:"Sign Up",
              color: kForthColor,
              textColor: kTextColor,
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context){
                          return LoginScreen();
                        },
                    ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
