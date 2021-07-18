import 'dart:developer';

import 'package:astrodhaam/component/custom_slider_rect.dart';
import 'package:astrodhaam/component/hex_color.dart';
import 'package:astrodhaam/component/toggle_bar.dart';
import 'package:astrodhaam/constant.dart';
import 'package:astrodhaam/landing_page.dart';
import 'package:astrodhaam/userentry/sign_up.dart';
import 'package:flutter/material.dart';

import 'payment wallet/wallet_page.dart';
import 'userentry/login_page.dart';
import 'userentry/permission_page.dart';
import 'widget/astro_feedback.dart';

void main() {
  runApp(AstroDhaam());
}

class AstroDhaam extends StatelessWidget {
  const AstroDhaam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        primaryColor: HexColor('#707070'),
        secondaryHeaderColor: HexColor('#FEC13C'),
        sliderTheme: SliderThemeData(
          inactiveTrackColor: HexColor('#707070'),
          activeTrackColor: HexColor('#707070'),
          trackShape: RectangularSliderTrackShape(),
          trackHeight: 4.0,
          thumbShape: CustomSliderThumbRect(
            thumbHeight: 30.0,
            thumbRadius: 5.0,
          ),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
          overlayColor: HexColor('#FEC13C').withAlpha(50),
          thumbColor: Colors.white,
          tickMarkShape: RoundSliderTickMarkShape(),
          activeTickMarkColor: HexColor('#FEC13C'),
          inactiveTickMarkColor: Colors.white,
          valueIndicatorShape: RectangularSliderValueIndicatorShape(),
          valueIndicatorColor: Colors.redAccent,
          valueIndicatorTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: PermissionPage(),
    );
  }
}
