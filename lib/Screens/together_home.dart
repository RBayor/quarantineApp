import 'package:flutter/material.dart';
import 'together_body.dart';
import 'profile.dart';

class TogetherHome extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {},
    ),
    title: SizedBox(
      height: 35.0,
      child: Image.network(
          "https://desenio.com/bilder/artiklar/zoom/11059_1.jpg",
          width: 900.0),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: new TogetherBody(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: null),
              new IconButton(
                  icon: Icon(
                    Icons.account_box,
                  ),
                  onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                  }
              ),
            ],
          ),
        ),
      ),

      // body: new Center(child: new RaisedButton(
      //   onPressed: () async {
      //     UserDB a = new UserDB();
      //     FirebaseUser user = await a.addGoogleUser();
      //     print(user.uid);
      //     UserPoint up = new UserPoint();
      //     up.updatePoint();
      //   },
      //   child: new Text('Check')
      // )),
    );
  }
}
