import 'dart:developer';

import 'package:astrodhaam/chatting/stream_chat_view.dart';
import 'package:astrodhaam/component/astro_drawer.dart';
import 'package:astrodhaam/component/option_button.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class AstrologerFilterList extends StatelessWidget {
  const AstrologerFilterList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AstroDrawer(),
      appBar: AppBar(
        title: Text(
          'Astrologer List',
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
      body: Container(
        padding: EdgeInsets.fromLTRB(
          24.0,
          16.0,
          24.0,
          0.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Top Rated Astrologer',
                    ),
                    Text(
                      '138 Astrologer Found',
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () async {
                    var result = await showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      barrierColor: Colors.transparent,
                      builder: (context) => Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                            color: Theme.of(context).secondaryHeaderColor,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              30.0,
                            ),
                            topRight: Radius.circular(
                              30.0,
                            ),
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(
                          20.0,
                          12.0,
                          20.0,
                          0.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                height: 10.0,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withAlpha(50),
                                  borderRadius: BorderRadius.circular(
                                    50.0,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 14.0,
                            ),
                            Text(
                              'Filter for easy result',
                            ),
                            SizedBox(
                              height: 19.0,
                            ),
                            Text(
                              'Availability',
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                ActionChip(
                                  label: Text('Call'),
                                  onPressed: () {},
                                  backgroundColor:
                                      Theme.of(context).secondaryHeaderColor,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                ActionChip(
                                  label: Text('Online'),
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                ActionChip(
                                  label: Text('Chat'),
                                  onPressed: () async {
                                    final client = StreamChatClient(
                                      'nzfmmpmcd3qw',
                                      logLevel: Level.SHOUT,
                                    );

                                    /// Set the current user. In a production scenario, this should be done using
                                    /// a backend to generate a user token using our server SDK.
                                    /// Please see the following for more information:
                                    /// https://getstream.io/chat/docs/flutter-dart/tokens_and_authentication/?language=dart
                                    await client.connectUser(
                                      User(
                                        id: 'restless-night-7',
                                        extraData: {
                                          'image':
                                              'http://local.getstream.io:9000/random_png/?id=restless-night-7&amp;name=restless-night-7',
                                        },
                                      ),
                                      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoicmVzdGxlc3MtbmlnaHQtNyJ9.51EpnLVW2wPSwmDMqW__86Z4tsBFYxv-eoWOC1Brppk',
                                    );

                                    final channel = client.channel('messaging',
                                        id: 'godevs');

                                    /// `.watch()` is used to create and listen to the channel for updates. If the
                                    /// channel already exists, it will simply listen for new events.
                                    channel.watch();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StreamChatView(
                                          client,
                                          channel,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              'Experience Range',
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              'Ratings',
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              'Price Between',
                            ),
                            SizedBox(
                              height: 34.0,
                            ),
                            OptionButton(
                              onTap: () {
                                Navigator.of(context).pop('holla');
                              },
                              optionText: Text('Apply Filter'),
                            )
                          ],
                        ),
                      ),
                    );
                    log(result.toString());
                  },
                  child: Icon(
                    Icons.sort,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Expanded(
              child: ListView.separated(
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(
                    9.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 67.0,
                        height: 67.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2.0,
                            color: Theme.of(context).secondaryHeaderColor,
                          ),
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(
                                0,
                                3,
                              ),
                              color: Colors.grey,
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/icons/profile.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name'),
                          Text('Exp: '),
                          Text(
                            'type of astrologer',
                          ),
                          Text('₹ 45/min'),
                          Text('stars..'),
                        ],
                      ),
                      Spacer(),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 55,
                                  padding: EdgeInsets.all(
                                    4.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1.0,
                                      color: Theme.of(context)
                                          .secondaryHeaderColor,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.call,
                                        size: 12.0,
                                      ),
                                      Text('Call'),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  padding: EdgeInsets.all(
                                    4.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1.0,
                                      color: Theme.of(context)
                                          .secondaryHeaderColor,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                  ),
                                  child: Text('Wait'),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 9.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 55,
                                  padding: EdgeInsets.all(
                                    4.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1.0,
                                      color: Theme.of(context)
                                          .secondaryHeaderColor,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.call,
                                        size: 12.0,
                                      ),
                                      Text('Chat'),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  padding: EdgeInsets.all(
                                    4.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1.0,
                                      color: Theme.of(context)
                                          .secondaryHeaderColor,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                  ),
                                  child: Text('Wait'),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 21.0,
                ),
                itemCount: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
