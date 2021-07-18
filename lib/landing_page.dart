import 'package:astrodhaam/astrologer%20list/astrologet_filter_list.dart';
import 'package:astrodhaam/astrologer%20profile/astrologer_profile.dart';
import 'package:astrodhaam/component/about_us.dart';
import 'package:astrodhaam/payment%20wallet/wallet_page.dart';
import 'package:astrodhaam/user%20profile/user_profile.dart';
import 'package:astrodhaam/userentry/login_page.dart';
import 'package:astrodhaam/userentry/permission_page.dart';
import 'package:astrodhaam/userentry/sign_up.dart';
import 'package:astrodhaam/widget/astro_feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'component/custom_animated_navigation_bar.dart';
import 'component/drawer_menu.dart';
import 'component/social_media_handle.dart';
import 'component/three_hotizontal_dot.dart';
import 'help and support/help_and_supports.dart';
import 'search/search_page.dart';
import 'widget/home_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;
  Color _inactiveColor = Colors.white;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      body: getBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(
        () => _currentIndex = index,
      ),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(
            Icons.home,
          ),

          // SvgPicture.asset(
          //     'assets/vectors/home.svg',
          //   ),
          title: Text(
            'Home',
          ),
          activeColor: Colors.white,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(
            Icons.search,
          ),

          // SvgPicture.asset(
          //   'assets/vectors/magnifying-glass.svg',
          // ),
          title: Text('Search'),
          activeColor: Colors.white,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(
            Icons.account_balance_wallet,
          ),

          //  SvgPicture.asset(
          //   'assets/vectors/people.svg',
          // ),
          title: Text(
            'Wallet ',
          ),
          activeColor: Colors.white,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(
            Icons.people,
          ),
          title: Text(
            'Profile',
          ),
          activeColor: Colors.white,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      HomePage(),
      SearchPage(),
      WalletPage(),
      UserProfile(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
