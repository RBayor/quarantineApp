import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff09031D),
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text("Profile"),
          elevation: 0,
          backgroundColor: Color(0xff09031d),
          actions: <Widget>[
            Icon(Icons.more_vert, color: Colors.white),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 28.0, top: 7),
                child: CircleAvatar(
                    radius: 40,
                    backgroundImage: new NetworkImage(
                        "https://previews.123rf.com/images/stockbroker/stockbroker1709/stockbroker170901648/85654224-happy-baby-girl-playing-with-toys-in-playroom.jpg")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Ella Page',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.location_on,
                              color: Colors.white, size: 17),
                          Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "HOME",
                                style: TextStyle(
                                    color: Colors.white,
                                    wordSpacing: 2,
                                    letterSpacing: 4),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
            Padding(
                padding: const EdgeInsets.only(
                    right: 38.0, left: 38.0, top: 15, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "1k",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'follower',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      color: Colors.white,
                      width: 0.2,
                      height: 22,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '1k',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Text(
                          'following',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),


                    Container(
                      color: Colors.white,
                      width: 0.2,
                      height: 22,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '25',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Text(
                          'QuarentinePoints',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),

                    Container(
                      color: Colors.white,
                      width: 0.2,
                      height: 22,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 18, right:18,top: 8, bottom: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(33)),
                        gradient: LinearGradient(
                            colors: [Color(0xff6D0EB5), Color(0xff4059F1)],
                            begin: Alignment.bottomRight,
                          end: Alignment.centerLeft,
                        )
                      ),
                      child: Text('follow',
                      style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)
                      ),
                      ),
                    ]),

            ),

            Container(
              height: 44,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
              ),
            ),
                ]));
  }
}
