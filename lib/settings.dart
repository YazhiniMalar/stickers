import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

import './feedback.dart';
import './main.dart';
import './about.dart';
import './privacyPolicy.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  _launchURL() async {
    const url = 'https://play.google.com/store/apps/details?id=com.snapchat.android&hl=en_IN&gl=US';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(
      backgroundColor: Color.fromRGBO(255, 218, 135, 1.0),
      title: Text(
        'SETTINGS',
        style: TextStyle(
          letterSpacing: 3,
          fontFamily: 'LoveYaLikeASister-Regular',
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 27,
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: Container(
        height: (mediaQuery.size.height -
                appBar.preferredSize.height -
                mediaQuery.padding.top) *
            1,
        child: GridView.count(
          physics: new NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(width: 3, color: Colors.black),
                  top: BorderSide(width: 3, color: Colors.black),
                ),
              ),
              child: GestureDetector(
                onTap: () => Share.share('\*FUNTOPIA\* \nCheck out this Awesomeness! Animated Vintage CartOon Stickers for Free download! \n https://play.google.com/store/apps/details?id=com.snapchat.android&hl=en_IN&gl=US'),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      top: 1,
                      child: SvgPicture.asset(
                        'assets/icons/shareicon.svg',
                        width: 160,
                        height: mediaQuery.size.height > 900 ? 250 : 161,
                      ),
                    ),
                    Positioned(
                      top: mediaQuery.size.height > 900 ? 245 : 160,
                      child: Text(
                        'SHARE THE APP',
                        style: TextStyle(
                            fontSize: mediaQuery.size.height > 900 ? 22 : 17,
                            fontFamily: 'NunitoSans-Regular',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 3, color: Colors.black),
                ),
              ),
              child: GestureDetector(
                onTap: _launchURL,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      top: 1,
                      child: SvgPicture.asset(
                        'assets/icons/rateappicon.svg',
                        width: 160,
                        height: mediaQuery.size.height > 900 ? 250 : 161,
                      ),
                    ),
                    Positioned(
                      top: mediaQuery.size.height > 900 ? 245 : 160,
                      child: Text(
                        'RATE THE APP',
                        style: TextStyle(
                            fontSize: mediaQuery.size.height > 900 ? 22 : 17,
                            fontFamily: 'NunitoSans-Regular',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 3, color: Colors.black),
                  right: BorderSide(width: 3, color: Colors.black),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => About()),
                  );
                },
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      top: 1,
                      child: SvgPicture.asset(
                        'assets/icons/abouticon.svg',
                        width: 160,
                        height: mediaQuery.size.height > 900 ? 250 : 161,
                      ),
                    ),
                    Positioned(
                      top: mediaQuery.size.height > 900 ? 245 : 160,
                      child: Text(
                        'ABOUT',
                        style: TextStyle(
                            fontSize: mediaQuery.size.height > 900 ? 22 : 17,
                            fontFamily: 'NunitoSans-Regular',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 3, color: Colors.black),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FeedBack()),
                  );
                },
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      top: 1,
                      child: SvgPicture.asset(
                        'assets/icons/feedbackicon.svg',
                        width: 160,
                        height: mediaQuery.size.height > 900 ? 250 : 161,
                      ),
                    ),
                    Positioned(
                      top: mediaQuery.size.height > 900 ? 245 : 160,
                      child: Text(
                        'FEEDBACK',
                        style: TextStyle(
                            fontSize: mediaQuery.size.height > 900 ? 22 : 17,
                            fontFamily: 'NunitoSans-Regular',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15).add(
                  EdgeInsets.only(left: 15).add(EdgeInsets.only(right: 13))),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 3, color: Colors.black),
                  right: BorderSide(width: 3, color: Colors.black),
                  bottom: BorderSide(width: 3, color: Colors.black),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      top: 1,
                      child: SvgPicture.asset(
                        'assets/icons/tutorialicon.svg',
                        width: 130,
                        height: mediaQuery.size.height > 900 ? 200 : 136.5,
                      ),
                    ),
                    Positioned(
                      top: mediaQuery.size.height > 900 ? 210 : 140,
                      child: Text(
                        'TUTORIAL',
                        style: TextStyle(
                            fontSize: mediaQuery.size.height > 900 ? 22 : 17,
                            fontFamily: 'NunitoSans-Regular',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 17)
                  .add(EdgeInsets.only(left: 5).add(EdgeInsets.only(right: 5))),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 3, color: Colors.black),
                  bottom: BorderSide(width: 3, color: Colors.black),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PrivacyPolicy()),
                  );
                },
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      top: 1,
                      child: SvgPicture.asset(
                        'assets/icons/privacyicon.svg',
                        width: 120,
                        height: mediaQuery.size.height > 900 ? 190 : 123,
                      ),
                    ),
                    Positioned(
                      top: mediaQuery.size.height > 900 ? 210 : 140,
                      child: Text(
                        'PRIVACY POLICY',
                        style: TextStyle(
                            fontSize: mediaQuery.size.height > 900 ? 22 : 17,
                            fontFamily: 'NunitoSans-Regular',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
