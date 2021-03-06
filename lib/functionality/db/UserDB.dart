import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final String uSER = "Users";
final String qCOUNT = 'q_count';
final String tIMEEPOCH = "time_epoch";

class UserDB {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _addToFireStore(FirebaseUser user) async {
    DocumentReference doc = await _getCollection(user.uid);
    await doc.setData({
     qCOUNT :"0.0",
      tIMEEPOCH: DateTime.now().millisecondsSinceEpoch
    });
  }

  Future<FirebaseUser> _addToFirebaseAuth(
      GoogleSignInAuthentication googleAuth) async {
    AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final FirebaseUser user =
        (await _auth.signInWithCredential(credential)).user;
    print("signed in " + user.displayName);
    return user;
  }

  Future<DocumentReference> _getCollection(String uid) async {
    Firestore fs = new Firestore();
    DocumentReference doc = fs.collection(uSER).document(uid);
    return doc;
  }

  Future<FirebaseUser> addGoogleUser() async {
    GoogleSignIn googleSignIn = new GoogleSignIn();

    GoogleSignInAccount account = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await account.authentication;
    FirebaseUser user = await _addToFirebaseAuth(googleAuth);
    _addToFireStore(user);
    return user;
  }

  Future<FirebaseUser> login() async {
    GoogleSignIn googleSignIn = new GoogleSignIn();
    GoogleSignInAccount account = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await account.authentication;
    FirebaseUser user = await _addToFirebaseAuth(googleAuth);
    return user;
  }

  Future<FirebaseUser> getUser() async {
    var u = await _auth.currentUser();
    return u;
  }

  getUserCollection() async {
    FirebaseUser user = await getUser();
    DocumentReference doc = await _getCollection(user.uid);
    return doc;
  }
}
