import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FaqTile(
          question: '1.Question one sample?',
          answer:
              'Astrodhaam is Astrologer Consultation App for User which need guidance for their life, career, love, business and many more.',
        ),
      ],
    );
  }
}

class FaqTile extends StatelessWidget {
  final question;
  final answer;
  const FaqTile({
    Key? key,
    this.question,
    this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 21.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
            ),
            child: Text(answer),
          )
        ],
      ),
    );
  }
}
