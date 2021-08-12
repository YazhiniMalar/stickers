import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
   _launchURL1() async {
    const url1 = 'https://www.linkedin.com/in/yazhini-malar-029b261ba';
    if (await canLaunch(url1)) {
      await launch(url1);
    } else {
      throw 'Could not launch $url1';
    }
  }
  _launchURL2() async {
    const url2 = 'https://www.linkedin.com/in/sruthik-i-5b9119198/';
     if (await canLaunch(url2)) {
      await launch(url2);
    } else {
      throw 'Could not launch $url2';
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(
      backgroundColor: Color.fromRGBO(255, 218, 135, 1.0),
      title: 
      Text(
        'ABOUT',
        style: TextStyle(
          fontFamily: 'LoveYaLikeASister-Regular',
          letterSpacing: 3,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 27,
        ),
      ),
      
    );
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 248, 218, 1.0),
      appBar: appBar,
      body: Container(
        height: (mediaQuery.size.height -
                appBar.preferredSize.height -
                mediaQuery.padding.top) *
            1,
        margin: EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text (
              'This is a sticker app developed by two students, exclusively made in reminiscence of good old cartoons that was a major part of our childhood.\nYou can use all of those stickers in WhatsApp and share with your friends and family and have a fun time!\nThere is a separate section for the packs that you have downloaded and the favourite stickers for your convenient.\nIt is for the use of both children and adults as these cartoons are a vintage of the time.\nWe have made fine quality stickers for a quality use.\nKindly consider our efforts and share all your reviews with us.\nYou can also use the feedback section for reviews and queries.\n\nThank you!!!\n\nHave a FUN-(U)-TOPIA!\n',
              // line spacing to be added!
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Merienda-Regular',
                color: Colors.black,
              ),
            ),
            Text('Meet the creators!',
            style: TextStyle(
              fontFamily: 'Merienda-Regular',
              fontSize: 20),
              ),
              SizedBox(height: 8),
               GestureDetector(
                onTap: _launchURL2,
                child: Row(
              children: [
                 SvgPicture.asset(
                        'assets/icons/linked.svg',
                        width: 160,
                        height: mediaQuery.size.height > 900 ? 140 : 50,
                      ),
              SizedBox(width: 10),
                  Text('I. Sruthik',
                  style: TextStyle(
              fontFamily: 'Merienda-Regular'),
              ),
              ]
            ),
               ),
            SizedBox(height: 10),
             GestureDetector(
                onTap: _launchURL1,
           child: Row(
              children: [
                SvgPicture.asset(
                        'assets/icons/linked.svg',
                        width: 160,
                        height: mediaQuery.size.height > 900 ? 140 : 50,
                      ),
             SizedBox(width: 10),
                  Text('Pa. Yazhini Malar',
                  style: TextStyle(
              fontFamily: 'Merienda-Regular'),
              ),
              ]
            ),
          ),
          ]
          ),
        ),
      ),
    );
  }
}