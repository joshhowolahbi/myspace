import 'package:flutter/material.dart';
import 'package:myspace/navItemsCons.dart';
import 'package:myspace/utils/respLayout.dart';
import 'package:myspace/route_const.dart';


class NavBar extends StatefulWidget {
  NavBar({Key key, this.title}) : super(key:key);
  final String title;
  
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  void choiceAction(String choice, BuildContext context){
    if(choice == Constants.Home){
      print('Home');
      Navigator.pushNamed(context, HomeViewRoute);
    }else if(choice == Constants.About){
      print('About');
      Navigator.pushNamed(context, AboutViewRoute);
    }else if(choice == Constants.Contact){
      print('Contact');
      Navigator.pushNamed(context, ContactViewRoute);
    }else if(choice == Constants.Myspace){
      print('MySpace');
      Navigator.pushNamed(context, MySpaceRoute);
    }
      
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 45,
        vertical: 38
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(colors: [
                    Color(0xFFC86DD7),
                    Color(0xFF3023AE),
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft
                  )
                ),
                child: Center(
                  child: Text("OA",
                  style: TextStyle(fontSize: 30, color: Colors.white)
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Text("Owolabi Ayomikun",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))
            ],
          ),
          if(!ResponsiveLayout.isSmallScreen(context))
            Row(
              //...navItem()   to add just list of strings
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  child: Text('Home'),
                  onPressed: (){Navigator.pushNamed(context, HomeViewRoute);},
                ),
                FlatButton(
                  child: Text('About'),
                  onPressed: (){Navigator.pushNamed(context, AboutViewRoute);},
                ),
                FlatButton(
                  child: Text('Contact'),
                  onPressed: (){Navigator.pushNamed(context, ContactViewRoute);},
                ),

              ]..add(InkWell(
                  child: Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFFC86DD7), Color(0xFF3023AE)],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF6078ea).withOpacity(.3),
                            offset: Offset(0, 6),
                            blurRadius: 8)
                      ]),
                  child: Material(
                    color: Colors.transparent,
                    child: Center(
                      child: Text("MySpace",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1,
                              fontFamily: "Montserrat")),
                    ),
                  ),
                 ),
                 onTap: (){Navigator.pushNamed(context, MySpaceRoute);},
                )
                ),
            )
          else
            Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.2)
              ),
              child: Center(
                child: PopupMenuButton(
                  onSelected: (val) => choiceAction(val, context),
                  icon: Icon(Icons.menu),
                  itemBuilder: (BuildContext context){
                    return Constants.choices.map((String choice){
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 10,),
                            Text(choice)
                          ],
                        )
                      );
                    }).toList();
                  },
                ),
              )
            ),
        ],
      ),
    );
  }
}