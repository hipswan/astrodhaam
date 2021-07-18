import 'package:astrodhaam/component/hex_color.dart';
import 'package:flutter/material.dart';

class LogsWall extends StatelessWidget {
  const LogsWall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            0.0,
            32.0,
            0.0,
            0.0,
          ),
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment History',
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                          top: 8.0,
                          bottom: 6.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Enter Date to Search',
                            ),
                            Icon(
                              Icons.calendar_today_rounded,
                              size: 14.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 22.0,
                ),
                GestureDetector(
                  onTap: () async {
                    int value = 0;

                    await showModalBottomSheet(
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
                              'Filter Payment History',
                            ),
                            RadioListTile(
                              value: 0,
                              groupValue: value,
                              onChanged: (value) {},
                              title: Text('Recharged'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 16.0,
                    width: 16.0,
                    child: Icon(
                      Icons.sort_rounded,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        Expanded(
          child: ListView(
            children: [
              RechargeTile(
                status: 'Recharge Status',
                timestamp: 'date and time',
                amount: 1000,
                color: HexColor(
                  '#1AFF00',
                ),
              ),
              RechargeTile(
                status: 'Recharge failed',
                timestamp: 'date and time',
                amount: -1000,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RechargeTile extends StatelessWidget {
  final status;
  final timestamp;
  final amount;
  final color;
  const RechargeTile({
    Key? key,
    this.status,
    this.amount,
    this.color,
    this.timestamp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> texts = [
      Text(
        status,
      ),
      Text(
        timestamp,
      )
    ];
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 2.0,
                color: color,
              ),
            ),
            child: Center(
              child: Text('₹'),
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: texts,
          ),
          Spacer(),
          Text(
            '₹ $amount',
          ),
        ],
      ),
    );
  }
}
