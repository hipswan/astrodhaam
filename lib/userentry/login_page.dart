import 'package:astrodhaam/component/hex_color.dart';
import 'package:astrodhaam/component/option_button.dart';
import 'package:astrodhaam/landing_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 110.0,
          left: 52.0,
          right: 52.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 172,
              child: Text(
                'Login into your account',
                strutStyle: StrutStyle(
                  fontSize: 38.0,
                ),
                style: TextStyle(fontSize: 29.0),
              ),
            ),
            SizedBox(
              height: 28.0,
            ),
            TextField(
              enableInteractiveSelection: true,
              decoration: InputDecoration(
                labelText: 'Username/email',
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            TextField(
              enableInteractiveSelection: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  activeColor: HexColor('##808080'),
                  value: true,
                  onChanged: (isChecked) {},
                ),
                Text('Remember Me'),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            OptionButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LandingPage(),
                  ),
                );
              },
              optionText: Text(
                'Login',
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 43.0,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(
                            color: HexColor('##808080'),
                          ),
                        ),
                        TextSpan(
                          text: "Signup",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: HexColor('##808080'),
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
