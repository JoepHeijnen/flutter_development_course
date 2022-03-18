import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

const String USER_COLLECTION = 'users';
const String POST_COLLECTION = 'posts';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Map? currentUser;

  FirebaseService();

  Future<bool> registerUser({
    required String name,
    required String email,
    required String password,
    required File image,
  }) async {
    try {
      UserCredential _userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      String _userId = _userCredential.user!.uid;
      String _fileName = Timestamp.now().microsecondsSinceEpoch.toString() +
          path.extension(image.path);

      UploadTask _task =
          _storage.ref('images/$_userId/$_fileName').putFile(image);

      return _task.then((_snapshot) async {
        String _downloadUrl = await _snapshot.ref.getDownloadURL();
        await _db.collection(USER_COLLECTION).doc(_userId).set({
          'name': name,
          'email': email,
          'image': _downloadUrl,
        });
        return true;
      });
    } catch (e) {
      return false;
    }
  }

  Future<bool> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential _userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (_userCredential.user != null) {
        currentUser = await getUserData(uid: _userCredential.user!.uid);
        return true;
      }

      return false;
    } catch (e) {
      return false;
    }
  }

  Future<void> logoutUser() async {
    try {
      await _auth.signOut();
    } catch (e) {}
  }

  Future<Map> getUserData({required String uid}) async {
    DocumentSnapshot _doc =
        await _db.collection(USER_COLLECTION).doc(uid).get();
    return _doc.data() as Map;
  }

  Future<bool> postImage({required File image}) async {
    try {
      String _userId = _auth.currentUser!.uid;
      String _fileName = Timestamp.now().millisecondsSinceEpoch.toString() +
          path.extension(image.path);

      UploadTask _task =
          _storage.ref('images/$_userId/$_fileName').putFile(image);
      return await _task.then((_snapshot) async {
        String _downloadUrl = await _snapshot.ref.getDownloadURL();
        await _db.collection(POST_COLLECTION).add({
          'userId': _userId,
          'timestamp': Timestamp.now(),
          'image': _downloadUrl,
        });
        return true;
      });
    } catch (e) {
      return false;
    }
  }

  Stream<QuerySnapshot> getLatestPosts() {
    return _db
        .collection(POST_COLLECTION)
        .orderBy('timestamp', descending: true)
        .snapshots();
  }

  Stream<QuerySnapshot> getPostsForUser() {
    String _userId = _auth.currentUser!.uid;
    return _db
        .collection(POST_COLLECTION)
        .where('userId', isEqualTo: _userId)
        .snapshots();
  }
}
