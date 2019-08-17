import 'package:flutter/material.dart';
import 'package:profile_app/widgets/info_card.dart';

const url = 'http://www.twitter.com/';
const email = 'rpidugu99@gmail.com';
const phone = '+31(0)687444321';
const location = 'Utrecht, Netherlands';

void main() => runApp(ProfileApp());

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://1.bp.blogspot.com/-EelXkFDfvFc/XTDqjyZ4NbI/AAAAAAAAW7k/2llcRPm4lpQ7Wz-AiRxzgE7yWmWua0RKwCLcBGAs/s1600/mypic.jpg'),
              ),
              Text(
                'Reddy Prasad',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Courgette'
                ),
              ),
              Text(
                'Data Engineer',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Source Sans Pro'
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              InfoCard(
                text: phone,
                icon: Icons.phone,
                onPressed: (){
                  print('phone..');
                }
              ),
              InfoCard(
                text: email,
                icon: Icons.email,
                onPressed: (){
                  print('email..');
                }
              ),
              InfoCard(
                text: url,
                icon: Icons.web,
                onPressed: (){
                  print('url..');
                }
              ),
              InfoCard(
                text: location,
                icon: Icons.location_city,
                onPressed: (){
                  print('location..');
                }
              )
            ],
          )
      )
    );
  }
}


