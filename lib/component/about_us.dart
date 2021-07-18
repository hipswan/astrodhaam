import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);
  Widget data() => Text(
        'Astrodhaam is Astrologer Consultation App for User which need guidance for their life, career, love, business and many more.',
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey,
          fontFamily: 'swis721 bt bold',
          fontWeight: FontWeight.w600,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Icon(
                    Icons.navigate_before,
                    color: Colors.black,
                  ),
                  Text(
                    'Back',
                    style: TextStyle(
                        color: Color.fromRGBO(128, 128, 128, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: Text(
                "About Us",
                style: TextStyle(
                    color: Color.fromRGBO(128, 128, 128, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'swis721 bt bold'),
              ),
            )),
            Expanded(
                child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.wallet_giftcard,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(width: 13),
                  Icon(
                    Icons.list,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                ],
              ),
            )),

            // Your widgets here
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.transparent,
            height: 271,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/icons/ic_aboutus.png",
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 46, right: 45, top: 21),
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Who we Are?',
                    style: TextStyle(
                      color: Color.fromRGBO(128, 128, 128, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'swis721 bt bold',
                    ),
                  ),
                  SizedBox(height: 5),
                  data(),
                  SizedBox(height: 16),
                  data(),
                  SizedBox(height: 16),
                  data(),
                  SizedBox(height: 16),
                  Text(
                    'How we Started?',
                    style: TextStyle(
                        color: Color.fromRGBO(128, 128, 128, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 5),
                  data(),
                ],
              ),
            ),
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
