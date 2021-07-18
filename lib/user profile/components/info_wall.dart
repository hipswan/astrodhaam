import 'package:astrodhaam/component/option_button.dart';
import 'package:flutter/material.dart';

class InfoWall extends StatelessWidget {
  const InfoWall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
        20.0,
        24.0,
        20.0,
        0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  enableInteractiveSelection: true,
                  decoration: InputDecoration(
                    labelText: 'First',
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: TextField(
                  enableInteractiveSelection: true,
                  decoration: InputDecoration(
                    labelText: 'Last',
                  ),
                ),
              ),
            ],
          ),
          TextField(
            enableInteractiveSelection: true,
            decoration: InputDecoration(
              labelText: 'Username/email',
            ),
          ),
          TextField(
            enableInteractiveSelection: true,
            decoration: InputDecoration(
              labelText: 'Mobile',
            ),
          ),
          TextField(
            enableInteractiveSelection: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Gender',
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Container(
                height: 35.0,
                width: 100,
                padding: EdgeInsets.all(
                  8.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
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
                    Expanded(
                      child: Center(
                        child: Text(
                          'Male',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 12.0,
              ),
              Container(
                height: 35.0,
                width: 100,
                padding: EdgeInsets.all(
                  8.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
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
                    Expanded(
                      child: Center(
                        child: Text(
                          'Female',
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
            optionText: Text(
              'Edit Info',
            ),
          )
        ],
      ),
    );
  }
}
