import 'package:flutter/material.dart';
import './settings.dart';
import 'package:flutter/services.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tutorial',
      home: Welcome(),
    );
  }
}

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int counter = 0;
  void _increaseCounter() {
    setState(() {
      counter = counter + 1;
    });
    print(text);
    print(pics);
  }

  String get text {
    var count = '';
    if (counter == 0) {
      count =
          'Home Page is where\nyou can find all of the\nsticker packs!\n\n\n';
    } else if (counter == 1) {
      count =
          'You can view your\ndownloaded packs in\n\'YOUR DOWNLOADS\'\nsection!\n\n';
    } else if (counter == 2) {
      count =
          'You can add your\nfavourite stickers by\ndouble tapping on the\nsticker and view them\nin the\'FAVOURITES\'\nsection!';
    }
    return count;
  }

  String get pics {
    var symbol = '';
    if (counter == 0) {
      symbol = 'home';
    } else if (counter == 1) {
      symbol = 'downloads';
    } else if (counter == 2) {
      symbol = 'favs';
    }
    return symbol;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: (Color.fromRGBO(45, 62, 95, 1)),
      body: Container(
        height: (mediaQuery.size.height - mediaQuery.padding.top) * 1,
        margin: EdgeInsets.all(1),
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Positioned(
              top: 40,
              left: 15,
              child: Text(
                'TUTORIAL',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Merienda-Regular',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                heightFactor: 1,
                child: Image.asset(
                  'assets/images/$pics.png',
                  width: 400,
                  height: 475,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 420),
              child: Center(
                heightFactor: 10,
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontFamily: 'Merienda-Regular',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Positioned(
                  left: 30,
                  bottom: 5,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48),
                      side: BorderSide(color: Colors.black, width: 3),
                    ),
                    child: Text(
                      'SKIP',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Merienda-Regular',
                      ),
                    ),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Settings()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 20,
                  margin: mediaQuery.size.height > 900
                      ? EdgeInsets.only(right: 222).add(
                          EdgeInsets.only(left: 140)
                              .add(EdgeInsets.only(top: 880)))
                      : EdgeInsets.only(right: 222).add(
                          EdgeInsets.only(left: 140)
                              .add(EdgeInsets.only(top: 750))),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: counter == 0
                          ? Color.fromRGBO(46, 207, 9, 1)
                          : Colors.transparent,
                      //green : grey
                      width: 2,
                    ),
                    color: Color.fromRGBO(196, 196, 196, 1),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  height: 20,
                  alignment: AlignmentDirectional.bottomCenter,
                  margin: mediaQuery.size.height > 900
                      ? EdgeInsets.only(right: 180).add(
                          EdgeInsets.only(left: 182)
                              .add(EdgeInsets.only(top: 880)))
                      : EdgeInsets.only(right: 180).add(
                          EdgeInsets.only(left: 182)
                              .add(EdgeInsets.only(top: 750))),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: counter == 1
                          ? Color.fromRGBO(46, 207, 9, 1)
                          : Colors.transparent,
                      width: 2,
                    ),
                    color: Color.fromRGBO(196, 196, 196, 1),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  height: 20,
                  alignment: Alignment.bottomCenter,
                  margin: mediaQuery.size.height > 900
                      ? EdgeInsets.only(right: 138).add(
                          EdgeInsets.only(left: 224)
                              .add(EdgeInsets.only(top: 880)))
                      : EdgeInsets.only(right: 138).add(
                          EdgeInsets.only(left: 224)
                              .add(EdgeInsets.only(top: 750))),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: counter == 2
                          ? Color.fromRGBO(46, 207, 9, 1)
                          : Colors.transparent,
                      width: 2,
                    ),
                    color: Color.fromRGBO(196, 196, 196, 1),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Positioned(
                  right: 30,
                  bottom: 5,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48),
                      side: BorderSide(color: Colors.black, width: 3),
                    ),
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Merienda-Regular',
                      ),
                    ),
                    color: Color.fromRGBO(48, 230, 91, 1),
                    textColor: Colors.white,
                    onPressed: _increaseCounter,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
