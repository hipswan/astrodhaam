import 'package:astrodhaam/component/hex_color.dart';
import 'package:astrodhaam/component/option_button.dart';
import 'package:astrodhaam/component/toggle_bar.dart';
import 'package:astrodhaam/landing_page.dart';
import 'package:astrodhaam/userentry/sign_up.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;
import '../constant.dart';

class PermissionPage extends StatefulWidget {
  const PermissionPage({Key? key}) : super(key: key);

  @override
  _PermissionPageState createState() => _PermissionPageState();
}

class _PermissionPageState extends State<PermissionPage> {
  List<String> locationStatusLabels = ['On', 'Off'];

  @override
  Widget build(BuildContext context) {
    var devieSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 64.0,
              ),
              child: Text(
                'Welcome to Astrodhaam',
                strutStyle: welcomeStrutStyle,
                style: welcomeTextStyle,
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 22.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff707070), width: 1.0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    15.0,
                    21.0,
                    0.0,
                    8.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 32.0,
                        height: 32.0,
                        child: Placeholder(),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Container(
                        width: 205,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location Permission',
                              textAlign: TextAlign.left,
                              strutStyle: locationStrutStyle,
                              style: locationTextStyle,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'We need this to collect and monitor location of your device for risk assessment purpose',
                              strutStyle: subtitlStrutStyle,
                              style: subtitleTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                        ),
                        child: ToggleBar(
                          width: 68,
                          height: 24,
                          borderRadius: 50.0,
                          backgroundBorder: Border.all(
                            color: HexColor('#707070'),
                            width: 1.2,
                          ),
                          backgroundColor: Colors.white,
                          selectedTabColor: Colors.white,
                          selectedTabBorder: Border.all(
                            color: HexColor('#707070'),
                            width: 1.0,
                          ),
                          labelTextStyle: TextStyle(
                            fontSize: 12,
                          ),
                          textColor: HexColor("#808080"),
                          labels: locationStatusLabels,
                          selectedTextColor: HexColor('#707070'),
                          onSelectionUpdated: (index) {
                            dev.log(index.toString());
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 22.0,
                ),
                child: Container(
                  width: double.maxFinite,
                  height: devieSize.height * 0.6,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      vertical: BorderSide(
                        color: Color(0xff707070),
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Scrollbar(
                    isAlwaysShown: true,
                    radius: Radius.circular(2.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              15.0,
                              9.5,
                              15.0,
                              36.0,
                            ),
                            child: Text('Choose your Language'),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              15.0,
                              0.0,
                              15.0,
                              0.0,
                            ),
                            child: Wrap(
                              children: List.generate(
                                100,
                                (index) => Padding(
                                  padding: const EdgeInsets.only(
                                    right: 8.0,
                                  ),
                                  child: ActionChip(
                                    label: Text('English'),
                                    onPressed: () {},
                                    labelPadding: EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    visualDensity:
                                        VisualDensity.adaptivePlatformDensity,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        50.0,
                                      ),
                                      side: BorderSide(
                                        color: HexColor('#FEC13C'),
                                      ),
                                    ),
                                  ),
                                ),
                              ).toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 25.0,
                bottom: 36.0,
                left: 20.0,
                right: 20.0,
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1.0,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Text(
                      'Click here to read more about Terms & Conditions and Privacy Policy'),
                  SizedBox(
                    height: 21.0,
                  ),
                  OptionButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupPage(),
                        ),
                      );
                    },
                    optionText: Text(
                      'Grant Permissions',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 17.0,
                    ),
                    decoration: BoxDecoration(
                      border: true
                          ? null
                          : Border.all(
                              width: 1.0,
                            ),
                      borderRadius: BorderRadius.circular(
                        26.0,
                      ),
                    ),
                    child: Center(
                      child: Text('Decline Permissions'),
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'By Clicking on grant permissions, you agree to our Terms & Conditions and Privacy Policy',
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
