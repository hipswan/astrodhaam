import 'package:astrodhaam/component/option_button.dart';
import 'package:astrodhaam/widget/astro_feedback.dart';
import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        0.0,
        24.0,
        0.0,
        0.0,
      ),
      child: Column(
        children: [
          ContactTile(
            label: 'info@astrodhaam.com',
            image: 'assets/icons/ic_at.png',
            onPressed: () {},
          ),
          SizedBox(
            height: 14.0,
          ),
          ContactTile(
            label: '+91-8898287538',
            image: 'assets/icons/ic_call.png',
            onPressed: () {},
          ),
          SizedBox(
            height: 14.0,
          ),
          ContactTile(
            label: 'Feedback Form',
            image: 'assets/icons/ic_feedback.png',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AstrologerFeedback();
                  },
                ),
              );
            },
          ),
          SizedBox(
            height: 14.0,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 39.0,
            ),
            child: DropdownButtonFormField(
              items: [
                DropdownMenuItem(
                  child: Text(
                    'conflict',
                  ),
                  value: 'Conflict',
                ),
              ],
              onChanged: (feddbackType) {},
              decoration: InputDecoration(
                labelText: 'Type of feedback',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 39.0,
              top: 12.0,
            ),
            child: TextField(
              maxLines: 5,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: 'Details of Improvement',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 39.0,
              top: 12.0,
            ),
            child: Text(
              'Attach File',
            ),
          ),
          SizedBox(
            height: 56.0,
          ),
          OptionButton(
            optionText: Text(
              'Submit Your Ticket',
            ),
          )
        ],
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  final label;
  final image;
  final onPressed;
  const ContactTile({
    Key? key,
    this.label,
    this.image,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Row(
          children: [
            SizedBox.fromSize(
              size: Size(
                39.0,
                30.0,
              ),
              child: Image.asset(
                image,
                width: 30.0,
                height: 30.0,
              ),
            ),
            Text(
              label,
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
