import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quarantine_app/functionality/db/UserDB.dart';

class UserPoint {
  void updatePoint() async {
    UserDB db = new UserDB();
    DocumentReference doc =  await db.getUserCollection();
    DocumentSnapshot snap = await doc.get();
    int _time = snap.data[tIMEEPOCH];
    DateTime t = DateTime.fromMillisecondsSinceEpoch(_time);
    int diff = DateTime.now().difference(t).inHours;
    if(diff>=1){
      double qp = double.parse(snap.data[qCOUNT]);
      qp+=0.15*diff;
      await doc.updateData({qCOUNT:qp, tIMEEPOCH:DateTime.now().millisecondsSinceEpoch});
    }
  }
}
