import 'package:flutter/material.dart';
import 'package:location/location.dart';
final String hands = 'hands';
final String mouth = 'mouth';
final String distance = 'distance';
final String nose = 'nose';


final Map<String, dynamic> safety = {
  "hands": [
    "Wash your hands",
    "Do not touch your face",
    "Use a hand sanitizer",
    "Avoid touching eyes, nose and mouth"
  ],
  "nose": ["Use nose masks"],
  "mouth": ["Cover your mouth if you need to cough"],
  "distance": ["Keep distance", "Do not shake people","Stay home unless absolutely neccessary to go out"],
  "health":["If you have fever, cough and difficulty breathing, seek medical care early"]
};

class SafetyRules {
  List<String> _getSafety(String part) {
    return safety[part];
  }
Future<bool> _checkLocation()async{
  bool indoors = true;
  final Location location = Location();
  LocationData locationData = await location.getLocation();
  print(locationData.latitude);
  return indoors;
}

  void showPop( String type, BuildContext context)async{
    bool check = await _checkLocation();
    List<String> items = _getSafety(type);
    if (check){
      AlertDialog ad = new AlertDialog(
        title: new Text("Be careful"),
        content: new Container(
          width: MediaQuery.of(context).size.width/2,
          child:new ListView.builder( shrinkWrap: true,itemCount: items.length ,itemBuilder: ((context,index){
            return new Container(
              padding: EdgeInsets.all(5.0),
              child: new ListTile(
                // elevation: 0.0,
                leading: new Icon(Icons.check, color: Colors.green,),
                title: new Text(items[index]),
              ),
            );
          }))
        ),
      );

      showDialog(context:(context) , builder: ((c){
        return ad;
      }));
    }
  }
  
}
