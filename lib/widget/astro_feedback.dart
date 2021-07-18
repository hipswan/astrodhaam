import 'package:astrodhaam/component/hex_color.dart';
import 'package:astrodhaam/component/option_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AstrologerFeedback extends StatelessWidget {
  const AstrologerFeedback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Feedback',
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
        padding: EdgeInsets.only(
          top: 24.0,
          left: 22.0,
          right: 22.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Container(
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           Icon(
            //             Icons.arrow_back_ios_rounded,
            //             size: 12.0,
            //           ),
            //           GestureDetector(
            //             onTap: () {},
            //             child: Text(
            //               'Back',
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     Spacer(),
            //     Expanded(
            //       child: Center(
            //         child: Text('Thank You'),
            //       ),
            //     ),
            //     Spacer(),
            //     Container(
            //       width: 20.0,
            //       child: Icon(
            //         Icons.ac_unit,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 13.0,
            //     ),
            //     Container(
            //       width: 20.0,
            //       child: Icon(
            //         Icons.ac_unit,
            //       ),
            //     ),
            //   ],
            // ),
            //FeedBack Details
            //Astrologer Profile

            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    15.0,
                  ),
                  topRight: Radius.circular(
                    15.0,
                  ),
                ),
              ),
              padding: EdgeInsets.all(
                16.0,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2.0,
                        color: HexColor('#FEC13C'),
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
                    width: 115,
                    height: 115,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('data'),
                        Text('data'),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text('data'),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text('stars'),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          'call rate',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.symmetric(
                  vertical: BorderSide(
                    width: 1.0,
                  ),
                ),
              ),
              padding: EdgeInsets.fromLTRB(
                16.0,
                8.5,
                16.0,
                17.0,
              ),
              child: Column(
                children: [
                  Text('stars'),
                  SizedBox(
                    height: 17.0,
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 95,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(
                        9.0,
                      ),
                    ),
                    child: Text(
                      'Review ',
                    ),
                  ),
                ],
              ),
            ),
            //call min
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                ),
              ),
              padding: EdgeInsets.fromLTRB(
                26.0,
                17.0,
                26.0,
                17.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 65,
                    child: Text(
                      'Call Duration',
                    ),
                  ),
                  Spacer(),
                  Text('12 min'),
                ],
              ),
            ),
            //total spend on call
            Container(
              decoration: BoxDecoration(
                border: Border.symmetric(
                  vertical: BorderSide(
                    width: 1.0,
                  ),
                ),
              ),
              padding: EdgeInsets.fromLTRB(
                26.0,
                17.0,
                26.0,
                17.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 90,
                    child: Text(
                      'Total spend on the call',
                    ),
                  ),
                  Spacer(),
                  Text('Rs 250'),
                ],
              ),
            ),
            //balance amount
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      15.0,
                    ),
                    bottomRight: Radius.circular(
                      15.0,
                    ),
                  )),
              padding: EdgeInsets.fromLTRB(
                26.0,
                17.0,
                26.0,
                17.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 65,
                    child: Text(
                      'Balance Amount',
                    ),
                  ),
                  Spacer(),
                  Text('Rs 50'),
                ],
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            OptionButton(
              optionText: Text(
                'Submit Feedback',
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
