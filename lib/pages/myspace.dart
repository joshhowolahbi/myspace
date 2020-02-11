import 'package:flutter/material.dart';
import 'package:myspace/utils/respLayout.dart';
import 'package:myspace/widgets/navBar.dart';

class MySpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NavBar(),
              Space()
            ],
          ),
        ),
    );
  }
}

class Space extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeView(),
    );
  }
}

class LargeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Owolabi Ayomikun',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
                SizedBox(height: 20,),
                Text('I am many things, I have had many experiences, and I have picked up a lot...',
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic)),
                SizedBox(height: 50,),
                Text('GRAPHICS DESIGNER',
                style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                          color: Color(0xFF8591B0))
                ),
                SizedBox(height: 20,),
                Container(
                      height: 400,
                      //margin: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      //margin: MainAxisAlignment.spaceEvenly,
                      padding: EdgeInsets.all(20),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          ImgContainer(height: 300,width: 400,imgUrl: 'assets/logo3.png',colr: 0xFF8591B0,graphicsName: 'Logo 1',),
                          SizedBox(width: 20,),
                          ImgContainer(height: 300,width: 400,imgUrl: 'assets/logo11.png',colr: 0xFF8591B0,graphicsName: 'Logo 2'),
                          SizedBox(width: 20,),
                          ImgContainer(height: 300,width: 400,imgUrl: 'assets/logo12.png',colr: 0xFF8591B0,graphicsName: 'Logo 3'),
                          SizedBox(width: 20,),
                          ImgContainer(height: 300,width: 400,imgUrl: 'assets/logo4.png',colr: 0xFF8591B0,graphicsName: 'Logo 4'),
                          SizedBox(width: 20,),
                          ImgContainer(height: 300,width: 400,imgUrl: 'assets/logo5.png',colr: 0xFF8591B0,graphicsName: 'Logo 5'),
                          SizedBox(width: 20,),
                          ImgContainer(height: 300,width: 400,imgUrl: 'assets/logo6.png',colr: 0xFF8591B0,graphicsName: 'Logo 6'),
                          SizedBox(width: 20,),
                          ImgContainer(height: 300,width: 400,imgUrl: 'assets/logo7.png',colr: 0xFF8591B0,graphicsName: 'Logo 7'),
                          SizedBox(width: 20,),
                          ImgContainer(height: 300,width: 400,imgUrl: 'assets/logo8.png',colr: 0xFF8591B0,graphicsName: 'Logo 8'),
                          SizedBox(width: 20,),
                          ImgContainer(height: 300,width: 400,imgUrl: 'assets/logo9.png',colr: 0xFF8591B0,graphicsName: 'Logo 9'),
                          SizedBox(width: 20,),
                          ImgContainer(height: 300,width: 400,imgUrl: 'assets/logo10.png',colr: 0xFF8591B0,graphicsName: 'Logo 10'),
                        ],
                      ),
                    ),
                SizedBox(height: 50,),
                Text('UI/UX ENGINEER',
                style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                          color: Color(0xFF8591B0))
                ),
                SizedBox(height: 20,),
                Container(
                      height: 300,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                            ),
                          ),SizedBox(width: 10,),
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green,
                            ),
                          ),SizedBox(width: 10,),
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                            ),
                          ),SizedBox(width: 10,),
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.pink,
                            ),
                          ),SizedBox(width: 10,),
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.indigo,
                            ),
                          ),SizedBox(width: 10,),
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple,
                            ),
                          ),SizedBox(width: 10,),
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.yellow,
                            ),
                          )
                        ],
                      ),
                    ),
              ],
            ),
          
      
    );
  }
}

class ImgContainer extends StatelessWidget {

  final double height;
  final double width;
  final String imgUrl;
  final int colr;
  final String graphicsName;

  ImgContainer({
    @required this.height,
    @required this.width,
    @required this.imgUrl,
    @required this.colr,
    @required this.graphicsName
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
        border: Border.all(
          color: Color(colr).withOpacity(.2),
          width: 1.5
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color(0xFF6078ea).withOpacity(.3),
            offset: Offset(2.0,6.0),
            blurRadius: 8.0
            )
        ]
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(5),
        child:Image.asset(
              imgUrl,
              width: 300,
              height: 300,
              semanticLabel: graphicsName,
              ),
      ),
    );
  }
}