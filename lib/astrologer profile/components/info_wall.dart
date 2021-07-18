import 'dart:ui';

import 'package:astrodhaam/component/hex_color.dart';
import 'package:astrodhaam/component/option_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InfoWall extends StatelessWidget {
  const InfoWall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        top: 24.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Expertise'),
          SizedBox(
            height: 6.0,
          ),
          Text(
            'Vedic, Numerology, Prashna',
          ),
          SizedBox(
            height: 18.0,
          ),
          Text('Timings'),
          FittedBox(
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 25,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).secondaryHeaderColor,
                      ),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            50.0,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Mon',
                    ),
                  ),
                ),
                SizedBox(
                  width: 9.0,
                ),
                SizedBox(
                  width: 50,
                  height: 25,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).secondaryHeaderColor,
                      ),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            50.0,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Tue',
                    ),
                  ),
                ),
                SizedBox(
                  width: 9.0,
                ),
                SizedBox(
                  width: 50,
                  height: 25,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).secondaryHeaderColor,
                      ),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            50.0,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Wed',
                    ),
                  ),
                ),
                SizedBox(
                  width: 9.0,
                ),
                SizedBox(
                  width: 50,
                  height: 25,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).secondaryHeaderColor,
                      ),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            50.0,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Thu',
                    ),
                  ),
                ),
                SizedBox(
                  width: 9.0,
                ),
                SizedBox(
                  width: 50,
                  height: 25,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).secondaryHeaderColor,
                      ),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            50.0,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Fri',
                    ),
                  ),
                ),
                SizedBox(
                  width: 9.0,
                ),
                SizedBox(
                  width: 50,
                  height: 25,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).secondaryHeaderColor,
                      ),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            50.0,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Sat',
                    ),
                  ),
                ),
                SizedBox(
                  width: 9.0,
                ),
                SizedBox(
                  width: 50,
                  height: 25,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).secondaryHeaderColor,
                      ),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            50.0,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Sun',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            '10 am - 12 am, 3:00 pm - 6:00 pm',
          ),
          Text('Language'),
          SizedBox(
            height: 6.0,
          ),
          Text(
            'Hindi, Marathi, English',
          ),
          SizedBox(
            height: 18.0,
          ),
          Text('Location'),
          SizedBox(
            height: 6.0,
          ),
          Text(
            'Mumbai',
          ),
        ],
      ),
    );
  }
}
