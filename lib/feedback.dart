import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  final nameContoller = TextEditingController();
  final emailContoller = TextEditingController();
  final feedbackContoller = TextEditingController();
  bool errorEnabled = true;
  var errorMessage;
  
  

 _sendMail() async {
   final mail = 'mailto:catrionarowthri@gmail.com?subject=Feedback from ${nameContoller.text}&body=${feedbackContoller.text}';
    if (await canLaunch(mail) ) {
      await launch(mail);
    } else {
      throw 'Could not launch $mail';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(
      backgroundColor: Color.fromRGBO(255, 218, 135, 1.0),
      title: Text(
        'FEEDBACK',
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
      backgroundColor: Color.fromRGBO(218, 226, 248, 1.0),
      appBar: appBar,
      body: Container(
        height: (mediaQuery.size.height -
                appBar.preferredSize.height -
                mediaQuery.padding.top) *
            1,
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Positioned(
              top: 50,
              right: 20,
              left: 20,
              child: TextField(
                decoration: InputDecoration(
                  errorText: errorMessage,
                  errorStyle: TextStyle(color: Colors.red),
                  labelText: 'Name',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(255, 0, 229, 1), width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(255, 0, 229, 1), width: 2.0)),
                ),
                controller: nameContoller,
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Positioned(
                  top: 150,
                  right: 20,
                  left: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      errorText: errorMessage,
                      errorStyle: TextStyle(color: Colors.red),
                      labelText: 'E-Mail',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(0, 10, 252, 1),
                              width: 2.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(0, 10, 252, 1),
                              width: 2.0)),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: emailContoller,
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Positioned(
                      top: 250,
                      right: 20,
                      left: 20,
                      child: TextField(
                        decoration: InputDecoration(
                          errorText: errorMessage,
                          errorStyle: TextStyle(color: Colors.red),
                          labelText: 'Feedback/Complaint',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 255, 71, 1),
                                  width: 2.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 255, 71, 1),
                                  width: 2.0)),
                        ),
                        maxLines: 10,
                        controller: feedbackContoller,
                      ),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Positioned(
                          top: 550,
                          right: 70,
                          child: Image.asset(
                            'assets/images/tom full.png',
                            alignment: Alignment.bottomRight,
                            height: mediaQuery.size.height > 900 ? 270 : 130,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Positioned(
                    bottom: 2,
                    right: 20,
                    left: 20,
                    child: RaisedButton(
                      color: Colors.deepPurple,
                      child: Text(
                        'SEND',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Merienda-Regular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48),
                          side: BorderSide(color: Colors.black, width: 3)),
                      onPressed:(){ 
                        if (!feedbackContoller.text.isEmpty) {
                       _sendMail();
                      setState(() {
                        if (feedbackContoller.text.isEmpty) {
                        print(errorMessage = 'Enter a valid information');
                        }else{
                        errorMessage = '';
                        }
                      });
                      }
                      }
                    )
                ),
              ],
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
