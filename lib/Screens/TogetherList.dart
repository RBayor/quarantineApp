import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class TogetherList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              child: new Card(
                color: Colors.red,
                child: Center(
                  child: Text("COVID19 CASE COUNT"),
                ),
              ),
              height: deviceSize.height * 0.17,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(
                                    "https://previews.123rf.com/images/stockbroker/stockbroker1709/stockbroker170901648/85654224-happy-baby-girl-playing-with-toys-in-playroom.jpg"))),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      new Text(
                        "username",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: new Image.network(
                    "https://i.stack.imgur.com/zImj3.jpg",
                    fit: BoxFit.cover,
                  ),
                ), 
                
                Padding( 
                  padding: const EdgeInsets.all(16.0),
                  child: Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    children: <Widget>[ 
                      new Icon( 
                          FontAwesomeIcons.heart
                      ), 
                      new SizedBox( 
                        width: 5.0,
                      ),
                    new Icon(
                    FontAwesomeIcons.comment
                ),
                      new SizedBox(
                        width: 5.0,
                      ),
                      new Icon(
                          FontAwesomeIcons.paperPlane
                      ),
              ],
                  ),
                ), 
                //new Icon(FontAwesomeIcons.bookmark)
              ],
            ),
    );
  }
}
