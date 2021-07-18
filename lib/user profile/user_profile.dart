import 'package:astrodhaam/component/hex_color.dart';
import 'package:flutter/material.dart';

import 'components/birthchart_wall.dart';
import 'components/following_wall.dart';
import 'components/info_wall.dart';
import 'components/logs_wall.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
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
        length: 4,
        child: Container(
          padding: EdgeInsets.fromLTRB(
            24.0,
            24.0,
            24.0,
            0.0,
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
                        shape: BoxShape.circle,
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
                              'name',
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'name',
                                    ),
                                    Text(
                                      'name',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 40.0,
                                  width: 40.0,
                                  child: FloatingActionButton(
                                    heroTag: 'Edit_User_Profile',
                                    onPressed: () {},
                                    backgroundColor:
                                        Theme.of(context).secondaryHeaderColor,
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    ),
                                  ),
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
                        text: 'Info',
                      ),
                      Tab(
                        text: 'Followings',
                      ),
                      Tab(
                        text: 'BirthChart',
                      ),
                      Tab(
                        text: 'Logs',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    InfoWall(),
                    FollowingWall(),
                    BirthchartWall(),
                    LogsWall(),
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
