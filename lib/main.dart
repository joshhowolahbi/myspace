import 'package:flutter/material.dart';
import 'package:myspace/pages/contact.dart';
import 'package:myspace/pages/myspace.dart';
import 'package:myspace/route_const.dart';
import 'package:myspace/widgets/navBar.dart';
import 'package:myspace/utils/respLayout.dart';
import 'package:myspace/pages/about.dart';
//import 'router.dart' as router;

void main(){ 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Owolabi Ayomikun Space',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      initialRoute: HomeViewRoute,
      routes: <String, WidgetBuilder>{
       MySpaceRoute: (BuildContext contex) => new MySpace(),
       AboutViewRoute: (BuildContext context) => new AboutPage(),
       ContactViewRoute: (BuildContext context) => new ContactPage()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF8FBFF), Color(0xFFFCFDFD)]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NavBar(),
              Body()
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.asset("assets/workspace.png", scale: .85),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Hello!",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                          color: Color(0xFF8591B0))),
                  RichText(
                    text: TextSpan(
                        text: "Welcome To ",
                        style:
                            TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
                        children: [
                          TextSpan(
                              text: "MySpace",
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87))
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20),
                    child: Text("LET'S EXPLORE MY WORLD"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(colors: [
                        Color(0xFFC86DD7),
                        Color(0xFF3023AE),
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft
                      )
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){Navigator.pushNamed(context, MySpaceRoute);},
                        child: Center(
                          child: Text("MySpace",
                          style: TextStyle(fontSize: 20, color: Colors.white)
                        ) 
                      ),
                    ),
                    // child: Center(
                    //   child: Text("MySpace",
                    //   style: TextStyle(fontSize: 20, color: Colors.white)
                    //   ),
                    // ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello!",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat"),
            ),
            RichText(
              text: TextSpan(
                text: 'Welcome To ',
                style: TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
                children: <TextSpan>[
                  TextSpan(
                      text: 'MySpace',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black87)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text("LET'S EXPLORE MY WORLD"),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset(
                "assets/workspace.png",
                scale: 1,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(colors: [
                   Color(0xFFC86DD7),
                   Color(0xFF3023AE),
                 ],
                 begin: Alignment.bottomRight,
                 end: Alignment.topLeft
                )
               ),
               child: Material(
                 color: Colors.transparent,
                 child: InkWell(
                  onTap: (){Navigator.pushNamed(context, MySpaceRoute);},
                  child: Center(
                     child: Text("MySpace",
                     style: TextStyle(fontSize: 20, color: Colors.white)
                     ) 
                  ),
                ),
              ),
             ),
          ],
        ),
      ),
    );
  }
}