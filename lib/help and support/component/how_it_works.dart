import 'package:flutter/material.dart';

class HowItWorksPage extends StatelessWidget {
  const HowItWorksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0.0,
        32.0,
        0.0,
        0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InstructionTile(
            title: '1.Register to Astrodhaam',
            body:
                'Astrodhaam is Astrologer Consultation App for User which need guidance for their life, career, love, business and many more.',
          ),
        ],
      ),
    );
  }
}

class InstructionTile extends StatelessWidget {
  final title;
  final body;
  const InstructionTile({
    Key? key,
    this.title,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
          ),
          child: Text(body),
        )
      ],
    );
  }
}
