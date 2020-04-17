import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserDB {

    _addToFireStore(FirebaseUser user) async {
    DocumentReference doc = await _getCollection(user.uid);
    await doc.setData({
      "q_count": "0.0",
      "time_epoch": DateTime.now().millisecondsSinceEpoch
    });
  }
   _addToFirebaseAuth(GoogleSignInAuthentication googleAuth) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;

    AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final FirebaseUser user =
        (await _auth.signInWithCredential(credential)).user;
    print("signed in " + user.displayName);

    return user;
  }

  

  Future<FirebaseUser> addGoogleUser() async {
    GoogleSignIn googleSignIn = new GoogleSignIn();

    GoogleSignInAccount account = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await account.authentication;
    FirebaseUser user = await _addToFirebaseAuth(googleAuth);
    _addToFireStore(user);
    return user;
  }

 

  Future<DocumentReference> _getCollection(String uid) async {
    Firestore fs = new Firestore();
    DocumentReference doc = fs.collection('Users').document(uid);
    return doc;
  }

  Future<FirebaseUser> login() async {
    GoogleSignIn googleSignIn = new GoogleSignIn();
    GoogleSignInAccount account = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await account.authentication;
    FirebaseUser user = await _addToFirebaseAuth(googleAuth);
    return user;
  }

  Future<FirebaseUser> getUser() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    var u = await _auth.currentUser();
    return u;
  }

  getUserCollection() async {
    FirebaseUser user = await getUser();
    DocumentReference doc = await _getCollection(user.uid);
    return doc;
  }
}
