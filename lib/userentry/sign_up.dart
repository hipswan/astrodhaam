import 'package:astrodhaam/component/hex_color.dart';
import 'package:astrodhaam/component/option_button.dart';
import 'package:astrodhaam/userentry/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/pattern/white-diamond.png'),
                    repeat: ImageRepeat.repeat,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.orange[800]!,
                      Colors.purple[800]!,
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 110.0,
              ),
              child: Column(
                children: [
                  ClipRect(
                    child: BackdropFilter(
                      filter: ui.ImageFilter.blur(
                        sigmaX: 4.0,
                        sigmaY: -4.0,
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 52.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: Colors.black.withOpacity(
                              0.3,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 172,
                              child: Text(
                                'Create your account',
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
                                labelText: 'Your Name',
                              ),
                            ),
                            SizedBox(
                              height: 18.0,
                            ),
                            TextField(
                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                labelText: 'Email',
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
                                Expanded(
                                  child: Text(
                                    'By Siging up you agree for the terms of services and privacy policy',
                                    softWrap: true,
                                  ),
                                ),
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
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              },
                              optionText: Text(
                                'Join Astrodhaam',
                              ),
                            ),
                            SizedBox(
                              height: 28.0,
                            ),
                            OptionButton(
                              onTap: () {},
                              optionText: Text(
                                'Signup with Facebook',
                              ),
                            ),
                          ],
                        ),
                      ),
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
                                text: "Already Joined? ",
                                style: TextStyle(
                                  color: HexColor('##808080'),
                                ),
                              ),
                              TextSpan(
                                text: "Login",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: HexColor('##808080'),
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
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
          ],
        ),
      ),
    );
  }
}
