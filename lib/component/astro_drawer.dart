import 'package:astrodhaam/help%20and%20support/help_and_supports.dart';
import 'package:flutter/material.dart';

import 'about_us.dart';
import 'drawer_menu.dart';
import 'social_media_handle.dart';
import 'three_hotizontal_dot.dart';

class AstroDrawer extends StatelessWidget {
  const AstroDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(
                30.0,
              ),
            ),
            child: Container(
              height: 170.0,
              width: 304.0,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/pattern/white-diamond.png',
                      repeat: ImageRepeat.repeat,
                      color: Colors.grey,
                      colorBlendMode: BlendMode.plus,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.0,
                      top: 30.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Theme.of(context).secondaryHeaderColor,
                              width: 2.0,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundImage: Image.asset(
                              'assets/pattern/washi.png',
                            ).image,
                            radius: 50.0,
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('{Username}'),
                              Text('{date of birth}'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          DrawerMenu(
            text: 'About Us',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutUsPage(),
                ),
              );
            },
          ),
          Divider(
            thickness: 2.0,
            height: 1.0,
            indent: 22.0,
            endIndent: 22.0,
          ),
          DrawerMenu(
            text: 'Help and Support',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HelpAndSupport();
                  },
                ),
              );
            },
          ),
          Divider(
            thickness: 2.0,
            height: 1.0,
            indent: 22.0,
            endIndent: 22.0,
          ),
          DrawerMenu(text: 'Share with others', onPressed: () {}),
          Divider(
            thickness: 2.0,
            height: 1.0,
            indent: 22.0,
            endIndent: 22.0,
          ),
          DrawerMenu(text: 'Rate the App', onPressed: () {}),
          Divider(
            thickness: 2.0,
            height: 1.0,
            indent: 22.0,
            endIndent: 22.0,
          ),
          DrawerMenu(text: 'Privacy Policy', onPressed: () {}),
          Divider(
            thickness: 2.0,
            height: 1.0,
            indent: 22.0,
            endIndent: 22.0,
          ),
          DrawerMenu(text: 'Logout', onPressed: () {}),
          ThreeHorizontalDot(),
          SizedBox(
            height: 12.0,
          ),
          SocialMediaHandle(),
        ],
      ),
    );
  }
}
