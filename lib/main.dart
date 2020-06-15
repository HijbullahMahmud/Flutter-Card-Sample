import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Card Sample',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card Sample")),
      body: ListView(
        children: <Widget>[
          _TvIconCard(),
          SizedBox(height: 2,),
          _TvIconCard(),
          SizedBox(height: 2,),
          _TvIconCard(),
          SizedBox(height: 2,),
          _TvIconCard(),
          SizedBox(height: 2,),
          _TvIconCard(),
          SizedBox(height: 2,),
          _TvIconCard(),

        ],
      )
    );
  }

  Widget _TvIconCard(){
    return  Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.network("https://i.imgur.com/WmLw772.png",),
            Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("DBC NEWS", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                    Text("Leading news based TV channel", style: TextStyle(fontSize: 15, color: Colors.blueAccent),),
                  ],
                )

            )
          ],

        ),
      ),
    );

  }
}
