import 'package:astrodhaam/component/astro_drawer.dart';
import 'package:astrodhaam/component/hex_color.dart';
import 'package:flutter/material.dart';

import 'components/info_wall.dart';
import 'components/review_wall.dart';

class AstrologerProfile extends StatelessWidget {
  const AstrologerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AstroDrawer(),
      appBar: AppBar(
        title: Text(
          'Astrologer Profile',
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
        length: 2,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                24.0,
                24.0,
                24.0,
                82.0,
              ),
              child: Column(
                children: [
                  //User photo with meta data
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            border: Border.all(
                              width: 1.0,
                              color: Theme.of(context).secondaryHeaderColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Astrologer Name',
                                ),
                                Text(
                                  'type of astrologer',
                                ),
                                Text(
                                  'experience',
                                ),
                                Text(
                                  'starss',
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'call rate',
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      'chat rate',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 21.0,
                  ),
                  //Tab bar
                  Container(
                    width: double.infinity,
                    child: Material(
                      color: HexColor('#F5F5F5'),
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      child: TabBar(
                        indicatorColor: Theme.of(context).secondaryHeaderColor,
                        indicatorSize: TabBarIndicatorSize.tab,
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
                            text: 'Info',
                          ),
                          Tab(
                            text: 'Reviews',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        InfoWall(),
                        ReviewWall(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              height: 80.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(
                        0,
                        -3,
                      ),
                      color: Colors.black.withOpacity(
                        0.1,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 52.0,
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 36.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                        borderRadius: BorderRadius.circular(
                          50.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.call_made_rounded,
                            color: HexColor('#008000'),
                          ),
                          SizedBox(width: 19.0),
                          Text('Call'),
                        ],
                      ),
                    ),
                    Container(
                      height: 52.0,
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 36.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                        borderRadius: BorderRadius.circular(
                          50.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.call_made_rounded,
                            color: HexColor('#008000'),
                          ),
                          SizedBox(width: 19.0),
                          Text('Chat'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
