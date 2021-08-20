import 'package:flutter/material.dart';
import 'package:thapelo_portfolio/components/constants.dart';

final List works = [
  'All',
  'App Designs',
  'Web Designs',
  'Logo Designs',
  '3D Designs'
];

class LatestWorks extends StatelessWidget {
  const LatestWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Latest Works',
            style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              ListView.builder(
                  itemCount: works.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return new Text(
                      works[index],
                      style: ktextStyle(),
                    );
                  })
            ],
          ),
          Row(
            children: [
              //big image
              SizedBox(
                width: 45.0,
              )
              //gridView
            ],
          ),
        ],
      ),
    );
  }
}
