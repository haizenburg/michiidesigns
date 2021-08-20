import 'package:flutter/material.dart';
import 'package:thapelo_portfolio/components/constants.dart';
import 'package:thapelo_portfolio/components/widgets.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(80.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                child: Image.asset('/images/me.png'),
              ),
              SizedBox(
                width: 100.0,
              ),
              Container(
                width: 800,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      kAboutMe1,
                      style: ktextStyle(),
                    ),
                    SizedBox(
                      height: 45.0,
                    ),
                    Text(
                      kAboutMe2,
                      style: ktextStyle(),
                    ),
                    SizedBox(
                      height: 45.0,
                    ),
                    SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color(0xFF202020),
                                ),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        side:
                                            BorderSide(color: Colors.white)))),
                            onPressed: () {},
                            child: Text('View More'))),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF202020),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Image.asset('/images/me.png'),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        kAboutPageText1,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Text(
                        kAboutPageText2,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          kStudies,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          kStudies2,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Image.asset('/images/fullest.png'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
