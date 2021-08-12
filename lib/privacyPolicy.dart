import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(
      backgroundColor: Color.fromRGBO(255, 218, 135, 1.0),
      title: Text(
        'PRIVACY POLICY',
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
      backgroundColor: Color.fromRGBO(248, 238, 218, 1.0),
      appBar: appBar,
      body: Container(
        height: (mediaQuery.size.height -
                appBar.preferredSize.height -
                mediaQuery.padding.top) *
            1,
        margin: EdgeInsets.only(left: 20, right: 20)
            .add(EdgeInsets.only(top: 5, bottom: 5)),
        child: SingleChildScrollView(
          child: RichText(
            text: TextSpan(
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'NunitoSans-Regular',
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'FUNTOPIA:\n',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
                  TextSpan(
                      text:
                          '  This service is provided by at no cost and is intended or use as is.\nThis page is used to inform the users regarding our policies with collection, use and disclosure of Personal Information if anyone decided to use our services.\nIf you choose to use our Service, then you agree to the collection and use of information in relation to this policy.\n'),
                  TextSpan(
                      text: 'Information Collection & Usage\n',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
                  TextSpan(
                      text:
                          '  We collect the following information to provide you an enhanced user experience and better services.\n'),
                  TextSpan(
                      text: 'Device Information\n',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
                  TextSpan(
                      text:
                          '  We recieve information about your device, including device manufacturer & model, IP address, device identifiers, advertising identifiers ans operating system version.\n'),
                  TextSpan(
                      text: 'Social Information\n',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
                  TextSpan(
                      text:
                          '  E-Mail address is collected while providing us your feedbacks in order to reach out for your enquiries.\n'),
                  TextSpan(
                      text: 'Security\n',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
                  TextSpan(
                      text:
                          '  We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that we do not share any personal information we have collected from you.\n'),
                  TextSpan(
                      text: 'Links to Other Sites\n',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
                  TextSpan(
                      text:
                          '  Our application may contain advertisements with links to other sites. If you choose to visit an advertiser by "clicking on" any type of advertisement, or click on another third party link, you will be directed to that third party\'s website. The fact that we link to a website or present an advertisement is not an endorsement, authorization or representation of our affiliation with that third party, nor is it an endorsement of their privacy or information security policies or practices. We do not exercise control over third party websites. These other websites may place party websites. These other websites may place their own cookies or other files on your computer, collect data or solicit personal information from you. Other sites follow different rules regarding the use or disclosure of the personal information you submit to them. We encourage you to read the privacy policies or statements of the other websites you visit.\n'),
                  TextSpan(
                      text: 'Children’s Privacy\n',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
                  TextSpan(
                      text:
                          '  We do not knowingly collect, maintain, or use Personal Information from children under 16 years of age, and no part of the Service is directed to children under the age of 16.\n'),
                  TextSpan(
                      text: 'Updates\n',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
                  TextSpan(
                      text:
                          '  We will post any adjustments to this Privacy Policy on this page, and the revised version will be effective when it is posted. If we materially change the ways in which we use Personal Information previously collected from you through our Application, we will notify you through our Application.'),
                ]),
            textAlign: TextAlign.start,
          ),
        ),
      ),
    );
  }
}
