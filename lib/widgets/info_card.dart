import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {

  final String text;
  final IconData icon;
  Function onPressed;

  InfoCard({@required this.text, @AnimationStatus.reverse this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: ListTile(
            leading: Icon(
              icon,
              color: Colors.deepPurpleAccent,
            ),
            title: Text(
              text,
              style: TextStyle(
                fontFamily: 'Source Sans pro',
                fontSize: 20.0,
                color: Colors.deepPurpleAccent,
              ),
            ),
          )
      ),
    );
  }


}
