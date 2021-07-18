import 'package:astrodhaam/component/hex_color.dart';
import 'package:flutter/material.dart';

import 'component/contact_us.dart';
import 'component/faq_page.dart';
import 'component/how_it_works.dart';

class HelpAndSupport extends StatelessWidget {
  const HelpAndSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help and support',
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              10.0,
            ),
            bottomRight: Radius.circular(
              10.0,
            ),
          ),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 32.0,
            left: 22.0,
            right: 22.0,
          ),
          child: Column(
            children: [
              Text(
                'Thank You for joining Astrodhaam',
              ),
              Text('12+ query answered unitl now!'),
              SizedBox(
                height: 24.0,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Material(
                  color: HexColor('#F5F5F5'),
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: Theme.of(context).secondaryHeaderColor,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 5.0,
                    labelColor: HexColor(
                      '#707070',
                    ),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                    unselectedLabelStyle: null,
                    tabs: [
                      Tab(
                        text: 'Contact Us',
                      ),
                      Tab(
                        text: 'How it Works?',
                      ),
                      Tab(
                        text: 'FAQs',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ContactUsPage(),
                    HowItWorksPage(),
                    FaqPage(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
