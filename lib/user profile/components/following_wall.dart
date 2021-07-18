import 'package:flutter/material.dart';

class FollowingWall extends StatelessWidget {
  const FollowingWall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0.0,
        24.0,
        0.0,
        0.0,
      ),
      child: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Container(
                  width: 51,
                  height: 51,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1.0,
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                ),
                title: Text('name'),
                subtitle: Text('name'),
                trailing: Container(
                  height: 35.0,
                  width: 100,
                  padding: EdgeInsets.all(
                    8.0,
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
                            'Unfollowing',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          separatorBuilder: (context, index) => Divider(
                height: 1.0,
                color: Theme.of(context).primaryColor,
                endIndent: 24.0,
                indent: 24.0,
              ),
          itemCount: 10),
    );
  }
}
