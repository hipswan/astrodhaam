import 'package:astrodhaam/component/astro_drawer.dart';
import 'package:astrodhaam/component/tween_animation_bar.dart';
import 'package:astrodhaam/search/component/astrologer_suggetion.dart';
import 'package:flutter/material.dart';

import 'component/top_expert_search.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AstroDrawer(),
      appBar: AppBar(
        title: Text(
          'Search',
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
          top: 14.0,
          left: 22.0,
          right: 22.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    50.0,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                ),
                hintText: 'Search Astrologer',
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            TweenAnimationBar(),
            Text(
              'Recent searches',
            ),
            SizedBox(
              height: 22.0,
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 16.0,
              children: [
                AstrologerSuggestion(
                  astrologerName: 'Chawani',
                  color: Colors.red,
                ),
                AstrologerSuggestion(
                  astrologerName: 'Chawani',
                  color: Colors.red,
                ),
                AstrologerSuggestion(
                  astrologerName: 'Chawani',
                  color: Colors.red,
                ),
                AstrologerSuggestion(
                  astrologerName: 'Chawani',
                  color: Colors.red,
                )
              ],
            ),
            SizedBox(
              height: 32.0,
            ),
            TweenAnimationBar(),
            Text(
              'Top Expertise Searches of this Month',
            ),
            SizedBox(
              height: 24.0,
            ),
            TopExpertSearchTile(
              icon: Icon(
                Icons.branding_watermark,
              ),
              text: 'Marriage Experts / 32 times',
            ),
            TopExpertSearchTile(
              icon: Icon(
                Icons.branding_watermark,
              ),
              text: 'Marriage Experts / 32 times',
            ),
            TopExpertSearchTile(
              icon: Icon(
                Icons.branding_watermark,
              ),
              text: 'Marriage Experts / 32 times',
            ),
          ],
        ),
      ),
    );
  }
}
