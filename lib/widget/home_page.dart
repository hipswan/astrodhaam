import 'dart:developer';
import 'dart:ui';

import 'package:astrodhaam/astrologer%20list/astrologet_filter_list.dart';
import 'package:astrodhaam/astrologer%20profile/astrologer_profile.dart';
import 'package:astrodhaam/component/astro_drawer.dart';
import 'package:astrodhaam/component/tween_animation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _imageCarousalScroll = ScrollController();

  @override
  void initState() {
    // TODO: implement initState

    _imageCarousalScroll.addListener(listenImageScroll);
    super.initState();
  }

  listenImageScroll() {
    // var deviceSize = MediaQuery.of(context).size;
    // log(_imageCarousalScroll.offset.toString());
    // log(_imageCarousalScroll.toString());

    // if (_imageCarousalScroll.offset > deviceSize.width / 2) {
    //   _imageCarousalScroll.animateTo(
    //     deviceSize.width,
    //     duration: Duration(milliseconds: 200),
    //     curve: Curves.easeIn,
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: AstroDrawer(),
        appBar: AppBar(
          title: Text(
            'Home',
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        color: Colors.pink[50],
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        child: ListView(
                          controller: _imageCarousalScroll,
                          scrollDirection: Axis.horizontal,
                          children: List.generate(
                            3,
                            (index) => Container(
                              width: deviceSize.width,
                              padding: EdgeInsets.only(
                                bottom: 32.0,
                                left: 20.0,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/icons/carousal_screen_1.png',
                                  ),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('fdkfjdjfd'),
                                  Text('dfdfdf'),
                                  Text(
                                    'ssjfkffd',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          50.0,
                                        ),
                                      )),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Explore',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20.0,
                      child: Row(
                        children: [
                          Icon(
                            Icons.ac_unit,
                          ),
                          Icon(
                            Icons.ac_unit,
                          ),
                          Icon(
                            Icons.ac_unit,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 20.0,
                      left: 20.0,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(
                              2.0,
                            ),
                            height: 5.0,
                            width: 5.0,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(
                              2.0,
                            ),
                            height: 10.0,
                            width: 10.0,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(
                              2.0,
                            ),
                            height: 5.0,
                            width: 5.0,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(
                              2.0,
                            ),
                            height: 5.0,
                            width: 5.0,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(
                    20.0,
                    24.0,
                    20.0,
                    0.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TweenAnimationBar(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top Rated Astrologer',
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return AstrologerFilterList();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              'Show all',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      AstrologerListView(),
                      SizedBox(
                        height: 24.0,
                      ),
                      TweenAnimationBuilder(
                        tween: Tween(
                          begin: 0.0,
                          end: 30.0,
                        ),
                        duration: Duration(
                          milliseconds: 750,
                        ),
                        builder: (context, double value, child) => Container(
                          width: value,
                          child: child,
                        ),
                        child: Container(
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: Theme.of(context).secondaryHeaderColor,
                            borderRadius: BorderRadius.circular(
                              2.0,
                            ),
                          ),
                        ),
                        curve: Curves.easeIn,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Read Horoscope',
                          ),
                          Text(
                            'Show all',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      HoroscopeListView(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HoroscopeListView extends StatelessWidget {
  const HoroscopeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          10,
          (index) => HoroscopeTile(),
        ),
      ),
    );
  }
}

class HoroscopeTile extends StatelessWidget {
  const HoroscopeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(
        right: 8.0,
      ),
      padding: EdgeInsets.all(
        8.0,
      ),
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/icons/leo_2x.png',
            width: 62.0,
            height: 62.0,
          ),
          Text('Leo'),
        ],
      ),
    );
  }
}

class AstrologerListView extends StatelessWidget {
  const AstrologerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          10,
          (index) => AstrologerTile(),
        ),
      ),
    );
  }
}

class AstrologerTile extends StatelessWidget {
  const AstrologerTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: 125,
      margin: EdgeInsets.only(
        right: 8.0,
      ),
      padding: EdgeInsets.all(
        8.0,
      ),
      color: Colors.purple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AstrologerProfile();
                      },
                    ),
                  );
                },
                child: Container(
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
              ),
              Positioned(
                top: 10.0,
                right: 10.0,
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: 10.0,
                left: 10.0,
                child: Container(
                  padding: EdgeInsets.all(
                    6.0,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).secondaryHeaderColor,
                    borderRadius: BorderRadius.circular(
                      50.0,
                    ),
                  ),
                  child: Text(
                    '4.3/5',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text('Astroger name'),
          Text('₹ 45/min')
        ],
      ),
    );
  }
}
