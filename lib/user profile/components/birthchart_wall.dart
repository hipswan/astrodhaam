import 'package:astrodhaam/component/option_button.dart';
import 'package:flutter/material.dart';

class BirthchartWall extends StatelessWidget {
  const BirthchartWall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Birth Date',
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
                            '24-09-2021',
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
                width: 21.0,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Time',
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 8.0,
                        bottom: 6.0,
                      ),
                      width: double.infinity,
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
                            '24-09-2021',
                          ),
                          Icon(
                            Icons.watch_later_outlined,
                            size: 14.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('Born Location'),
          SizedBox(
            height: 8.0,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
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
                Text('Mumbai'),
                Icon(
                  Icons.gps_fixed_rounded,
                  size: 20.0,
                ),
              ],
            ),
          ),
          //Time
          SizedBox(
            height: 20.0,
          ),
          Text('Time'),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Container(
                height: 25.0,
                width: 75,
                padding: EdgeInsets.all(
                  3.0,
                ),
                decoration: BoxDecoration(
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
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: FittedBox(
                        child: Text(
                          'Yes',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 14.0,
              ),
              Container(
                height: 25.0,
                width: 75,
                padding: EdgeInsets.all(
                  3.0,
                ),
                decoration: BoxDecoration(
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
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).secondaryHeaderColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: FittedBox(
                        child: Text(
                          'No',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 34.0,
          ),
          OptionButton(
            onTap: () {},
            optionText: Text('Update Information'),
          )
        ],
      ),
    );
  }
}
