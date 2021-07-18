import 'package:astrodhaam/component/astro_header_widget.dart';
import 'package:astrodhaam/component/custom_slider_rect.dart';
import 'package:astrodhaam/component/hex_color.dart';
import 'package:astrodhaam/component/option_button.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  num totalBalance = 100;
  ValueNotifier<num> price = ValueNotifier(100);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Wallet',
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
          child: ValueListenableBuilder(
            valueListenable: price,
            builder: (context, num value, _) => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    0.0,
                    29.0,
                    0.0,
                    3.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/icons/ruppee_note_2x.png',
                        height: 56,
                        width: 56,
                        fit: BoxFit.fitHeight,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Total Balance',
                        strutStyle: StrutStyle(
                          fontSize: 54,
                        ),
                        style: TextStyle(
                          fontSize: 41.0,
                        ),
                      )
                    ],
                  ),
                ),
                //TODO:add current amount with earlier amount Total Balance
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/ruppe_2x.png',
                      height: 55,
                      width: 56,
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      (totalBalance + value).toStringAsFixed(0),
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 60.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 36.0,
                ),

                //Add and minus button
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    35.0,
                    0.0,
                    35.0,
                    0.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 32.0,
                        width: 32.0,
                        child: Material(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: HexColor('#FEC13C'),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(
                              5.0,
                            ),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.add,
                              color: HexColor('#FEC13C'),
                              size: 32,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          value.toStringAsFixed(0),
                          textAlign: TextAlign.center,
                          strutStyle: StrutStyle(
                            fontSize: 40.0,
                          ),
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                      Container(
                        height: 32.0,
                        width: 32.0,
                        child: Material(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: HexColor('#FEC13C'),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(
                              5.0,
                            ),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.add,
                              color: HexColor('#FEC13C'),
                              size: 32,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                //Slider
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    12.0,
                    0.0,
                    12.0,
                    0.0,
                  ),
                  child: Slider(
                    value: value.toDouble(),
                    // onChangeStart: ,
                    // onChangeEnd: ,
                    min: 0,
                    max: 10000,
                    // divisions: 25,
                    onChanged: (changeValue) {
                      price.value = changeValue;
                    },
                  ),
                )
                //Slider
                ,
                SizedBox(
                  height: 24.0,
                ),
                //Fixed Money add option
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    35.0,
                    0.0,
                    35.0,
                    0.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 72,
                        height: 32.0,
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
                        child: Center(
                          child: Text('100'),
                        ),
                      ),
                      Container(
                        width: 72,
                        height: 32.0,
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
                        child: Center(
                          child: Text('100'),
                        ),
                      ),
                      Container(
                        width: 72,
                        height: 32.0,
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
                        child: Center(
                          child: Text('100'),
                        ),
                      ),
                      Container(
                        width: 72,
                        height: 32.0,
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
                        child: Center(
                          child: Text('100'),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 36.0,
                ),
                //recharge invoice
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      42.0,
                      0.0,
                      42.0,
                      0.0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Recharge Pack'),
                            Spacer(),
                            Text(
                              '₹ ${value.toStringAsFixed(0)}',
                              strutStyle: StrutStyle(
                                fontSize: 20.0,
                              ),
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            )
                          ],
                        ),
                        Divider(
                          color: HexColor('#707070'),
                          thickness: 3.0,
                          height: 8.0,
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          children: [
                            Text('GST chargeable @18%'),
                            Spacer(),
                            Text(
                              '₹ ${(value * 0.18).toStringAsFixed(2)}',
                              strutStyle: StrutStyle(
                                fontSize: 20.0,
                              ),
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            )
                          ],
                        ),
                        Divider(
                          color: HexColor('#707070'),
                          thickness: 3.0,
                          height: 8.0,
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          children: [
                            Text('Total'),
                            Spacer(),
                            Text(
                              '₹ ${(value * 1.18).toStringAsFixed(2)}',
                              strutStyle: StrutStyle(
                                fontSize: 20.0,
                              ),
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            )
                          ],
                        ),
                        Divider(
                          color: HexColor('#707070'),
                          thickness: 3.0,
                          height: 8.0,
                        ),
                        SizedBox(
                          height: 36.0,
                        ),
                        OptionButton(
                          onTap: () {},
                          optionText: Text(
                            'Proceed To Payment',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
