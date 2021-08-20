import 'package:flutter/material.dart';
import 'package:thapelo_portfolio/components/constants.dart';
import 'package:thapelo_portfolio/components/widgets.dart';
import 'package:thapelo_portfolio/pages/about.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 850,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    '/images/brg.jpg',
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(child: Center(child: HomeLand())),
                ],
              ),
            ),
            Container(
              color: Color(0xFF202020),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: AboutSection(),
              ),
            ),
            Container(
              color: Color(0xFF202020),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: LatestWorks(),
              ),
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}

class HomeLand extends StatelessWidget {
  const HomeLand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        //container
        Positioned(
          child: Container(
            padding: EdgeInsets.only(right: 50.0),
            margin: EdgeInsets.only(right: 50.0),
            width: 100,
            height: 300,
            decoration: BoxDecoration(
                color: Color(0xFFB6EFEC),
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(20.0),
                  topRight: const Radius.circular(20.0),
                  bottomLeft: const Radius.circular(20.0),
                  bottomRight: const Radius.circular(20.0),
                )),
          ),
        ),

        //text

        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi I\'m Thapelo',
                style: kheadTextStyle(),
              ),
              Text(
                'Moima',
                style: kheadTextStyle(),
              ),

              //text
              Text(
                'I am a web and app',
                style: kheadTextStyle(),
              ),
              Text(
                'designer',
                style: kheadTextStyle(),
              ),

              //hire button
              SizedBox(
                  width: 200,
                  height: 50,
                  child: SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF202020)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color: Colors.white)))),
                          onPressed: () {},
                          child: Text('hire me'.toUpperCase())))),
            ],
          ),
        )
      ],
    );
  }
}

final List works = [
  'All',
  'App Designs',
  'Web Designs',
  'Logo Designs',
  '3D Designs'
];

final imgs = [
  Image.asset('/images/img1.png'),
  Image.asset('/images/img2.png'),
  Image.asset('/images/img3.png'),
  Image.asset('/images/img4.png'),
];

class LatestWorks extends StatelessWidget {
  const LatestWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ListView.builder(
            //     itemCount: works.length,
            //     itemBuilder: (BuildContext ctxt, int index) {
            //       return new Text(
            //         works[index],
            //         style: ktextStyle(),
            //       );
            //     })

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                works[0],
                style: ktextStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                works[1],
                style: ktextStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                works[2],
                style: ktextStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                works[3],
                style: ktextStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                works[4],
                style: ktextStyle(),
              ),
            ),
          ],
        ),
        Row(
          children: [
            //big image
            Expanded(child: Image.asset('/images/foodcamp.png')),
            SizedBox(
              width: 45.0,
            ),
            //gridView

            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('/images/img1.png'),
                      SizedBox(
                        width: 45.0,
                        height: 45,
                      ),
                      Image.asset('/images/img2.png'),
                      SizedBox(
                        height: 45.0,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    children: [
                      Image.asset('/images/img3.png'),
                      SizedBox(
                        width: 45.0,
                        height: 45,
                      ),
                      Image.asset('/images/img4.png'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Image.asset('/images/img5.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('/images/img6.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('/images/img7.png'),
              ),
            ),
            Expanded(
              child: Image.asset('/images/img8.png'),
            ),
          ],
        )
      ],
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Terms of use - Privacy policy',
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ),
          SizedBox(
            width: 1090,
          ),
          Expanded(
              child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('/images/insta.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('/images/vector.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('/images/bene.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('/images/twitter.png'),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
