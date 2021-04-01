import 'package:flutter/material.dart';

class AboutRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        centerTitle: true,
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Picture(),
            TextNama(),
            TextNim(),
            TextKelas(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          height: 25,
          color: Colors.cyan[900],
          alignment: Alignment.center,
          child: Text(
            'Developed with <3 by @ngurahsunitra.',
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
        ),
        //elevation: 0,
      ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 95,
        backgroundColor: Colors.cyan[900],
        child: CircleAvatar(
          radius: 90,
          backgroundImage: AssetImage('assets/ngurah.jpg'),
        ),
      ),
      margin: const EdgeInsets.only(top: 40.0),
    );
  }
}

class TextNama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
            side: BorderSide(color: Colors.blueGrey)
        ),
        padding: EdgeInsets.only(left: 70.0, right: 70.0, top: 20.0, bottom: 20.0),
        onPressed: () {},
        color: Colors.cyan[900],
        child: Text(
          "I Gede Ngurah Sunitra",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}

class TextNim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
            side: BorderSide(color: Colors.blueGrey)
        ),
        padding: EdgeInsets.only(left: 110.0, right: 110.0, top: 20.0, bottom: 20.0),
        onPressed: () {},
        color: Colors.cyan[900],
        child: Text(
          "1915051028",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}

class TextKelas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: Colors.blueGrey)
        ),
        padding: EdgeInsets.only(left: 140.0, right: 140.0, top: 20.0, bottom: 20.0),
        onPressed: () {},
        color: Colors.cyan[900],
        child: Text(
          "PTI 4A",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}

