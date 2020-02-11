import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:myspace/utils/respLayout.dart';
import 'package:myspace/widgets/navBar.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NavBar(), 
            SizedBox(height: 50), 
            Body()
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeContact(),
      smallScreen: SmallContact(),
    );
  }
}

class LargeContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Contacts',
            style: new TextStyle(fontSize: 40, fontWeight: FontWeight.w600)),
        SizedBox(
          height: 100,
        ),
        ContactWidget(
            contactType: 'Gmail',
            contactUrl:
                'https://mail.google.com/mail/?extsrc=mailto&url=mailto%3A%3Fto%3Djosh.howolahbi%40gmail.com%26bcc%3D%26subject%3D%26body%3D',
            contactLogo: 'assets/gmail.png'),
        SizedBox(height: 50),
        ContactWidget(
            contactType: 'LinkedIn',
            contactUrl:
                'https://www.linkedin.com/in/ayomikun-owolabi-370259100/',
            contactLogo: 'assets/Linkedin.png'),
        SizedBox(height: 50),
        ContactWidget(
            contactType: 'Github',
            contactUrl: 'https://github.com/joshhowolahbi',
            contactLogo: 'assets/github.png'),
        SizedBox(height: 50),
        ContactWidget(
            contactType: 'Twitter',
            contactUrl: 'https://twitter.com/josh_ayerr',
            contactLogo: 'assets/Twit.png'),
        SizedBox(height: 50),
        ContactWidget(
            contactType: 'Facebook',
            contactUrl: 'https://facebook.com/owolabiayomikun',
            contactLogo: 'assets/facebk.png'),
      ],
    );
  }
}

class SmallContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Contacts',
            style: new TextStyle(fontSize: 40, fontWeight: FontWeight.w600)),
        SizedBox(
          height: 100,
        ),
        SmallContactWidget(
            contactType: 'Gmail',
            contactUrl:
                'https://mail.google.com/mail/?extsrc=mailto&url=mailto%3A%3Fto%3Djosh.howolahbi%40gmail.com%26bcc%3D%26subject%3D%26body%3D',
            contactLogo: 'assets/gmail.png'),
        SizedBox(height: 50),
        SmallContactWidget(
            contactType: 'LinkedIn',
            contactUrl:
                'https://www.linkedin.com/in/ayomikun-owolabi-370259100/',
            contactLogo: 'assets/Linkedin.png'),
        SizedBox(height: 50),
        SmallContactWidget(
            contactType: 'Github',
            contactUrl: 'https://github.com/joshhowolahbi',
            contactLogo: 'assets/github.png'),
        SizedBox(height: 50),
        SmallContactWidget(
            contactType: 'Twitter',
            contactUrl: 'https://twitter.com/josh_ayerr',
            contactLogo: 'assets/Twit.png'),
        SizedBox(height: 50),
        SmallContactWidget(
            contactType: 'Facebook',
            contactUrl: 'https://facebook.com/owolabiayomikun',
            contactLogo: 'assets/facebk.png'),
      ],
    );
  }
}

class SmallContactWidget extends StatelessWidget {
  final String contactType;
  final String contactLogo;
  final String contactUrl;

  SmallContactWidget(
      {@required this.contactType,
      @required this.contactUrl,
      @required this.contactLogo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      //color: Colors.grey.withOpacity(.2),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  image: new DecorationImage(
                      image: ExactAssetImage(contactLogo), fit: BoxFit.fill)),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 200,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.grey.withOpacity(.3), width: 1.5),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color(0xFF6078ea).withOpacity(.3),
                        offset: Offset(2.0, 6.0),
                        blurRadius: 8.0)
                  ]),
              child: Center(
                child: InkWell(
                  child: Text(
                    contactType,
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  onTap: () => launch(contactUrl),
                ),
              ),
            ),
          ]),
    );
  }
}

class ContactWidget extends StatelessWidget {
  final String contactType;
  final String contactLogo;
  final String contactUrl;

  ContactWidget(
      {@required this.contactType,
      @required this.contactUrl,
      @required this.contactLogo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.grey.withOpacity(.2),
      child: Center(
        child: Container(
          height: 70,
          width: 500,
          margin: EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 250,
                height: 60,
                child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            image: new DecorationImage(
                                image: ExactAssetImage(contactLogo),
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(width: 10),
                      Container(width: 70, height: 2, color: Colors.white),
                      SizedBox(width: 10),
                      Container(
                          width: 10,
                          height: 10,
                          decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black, width: 1.5),
                              color: Colors.white)),
                      SizedBox(width: 10),
                      Container(width: 70, height: 2, color: Colors.white),
                    ])),
              ),
              Container(
                height: 50,
                width: 200,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border:
                        Border.all(color: Colors.grey.withOpacity(.3), width: 1.5),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color(0xFF6078ea).withOpacity(.3),
                          offset: Offset(2.0, 6.0),
                          blurRadius: 8.0)
                    ]),
                child: Center(
                  child: InkWell(
                    child: Text(
                      contactType,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    onTap: () => launch(contactUrl),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
