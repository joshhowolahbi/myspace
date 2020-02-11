import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  const NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    //Navigator.of(context).pushNamed('');
    return Text(
      title, style: TextStyle(fontSize: 18),      
    );
  }
}