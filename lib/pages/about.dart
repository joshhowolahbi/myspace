import 'package:flutter/material.dart';
import 'package:myspace/utils/respLayout.dart';
import 'package:myspace/widgets/navBar.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NavBar(),
              SizedBox(
                height: 50,
              ),
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
      largeScreen: LargeAboutContent(),
      smallScreen: SmallAboutContent(),
    );
  }
}

class LargeAboutContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('About Me',
        style: new TextStyle(fontSize: 40, fontWeight: FontWeight.w600)
        ),
        SizedBox(height: 100,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 10,
              height:500,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                colors: [Color(0xFFC86DD7).withOpacity(.5), Color(0xFF3023AE).withOpacity(.5)]
                )
              ),
            ),
            Container(
              width: 750,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 400,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/dp.png'),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 350,
                    child: Column(
                      children: <Widget>[
                        Text("I am Ayomikun Owolabi, Catar. My love for Art was born at age ten, when capturing moments was done with crayon and paper and from My Book of Bible Stories- a must have for kids then. As technology permeated the boundaries of Nigeria, I not only recreated pictures, I began to capture moments through pictures. I started with an IPhone 6 and my first model, Mariam, who turned out to become my biggest fan and the catalyst behind the creation of catar_photography, my Instagram photography page. Many people don't believe my pictures are products of a phone maybe they never will.",
                        style: new TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 10,
              height: 500,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                colors: [Color(0xFF3023AE).withOpacity(.5), Color(0xFFC86DD7).withOpacity(.5)]
                )
              ),
            ),
          ],
        )
      ],
    );
  }
}

class SmallAboutContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('About Me',
        style: new TextStyle(fontSize: 30, fontWeight: FontWeight.w600)
        ),
        SizedBox(height: 50,),
        Container(
                width: 300,
                height: 400,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: ExactAssetImage('assets/dp.png'),
                    fit: BoxFit.fill
                  )
                ),
              ),
        SizedBox(
          height: 50,
        ),
        Container(
          width: 350,
          child: Column(
            children: <Widget>[
              Text("I am Ayomikun Owolabi, Catar. My love for Art was born at age ten, when capturing moments was done with crayon and paper and from My Book of Bible Stories- a must have for kids then. As technology permeated the boundaries of Nigeria, I not only recreated pictures, I began to capture moments through pictures. I started with an IPhone 6 and my first model, Mariam, who turned out to become my biggest fan and the catalyst behind the creation of catar_photography, my Instagram photography page. Many people don't believe my pictures are products of a phone maybe they never will.",
              style: new TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.justify,
              )
             ],
            ),
          ),
          SizedBox(height: 300,)
      ],
    );
  }
}