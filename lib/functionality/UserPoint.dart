import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quarantine_app/functionality/db/UserDB.dart';

class UserPoint {
  void updatePoint() async {
    UserDB db = new UserDB();
    DocumentReference doc =  await db.getUserCollection();
    DocumentSnapshot snap = await doc.get();
    int _time = snap.data['time_epoch'];
    DateTime t = DateTime.fromMillisecondsSinceEpoch(_time);
    int diff = DateTime.now().difference(t).inHours;
    if(diff>=1){
      double qp = double.parse(snap.data['q_count']);
      qp+=0.15*diff;
      await doc.updateData({"q_count":qp,"time_epoch":DateTime.now().millisecondsSinceEpoch});
    }
  }
}
