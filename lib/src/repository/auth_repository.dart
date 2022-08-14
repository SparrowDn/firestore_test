import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user_model.dart';

class AuthRepository {
  static Future<UserModel?> findUserByUid(String uid) async {
    var users = FirebaseFirestore.instance.collection('users');
    try {
      var user = await users.where('uid', isEqualTo: uid).get();
      if(user.size == 0) return null;
      return UserModel.fromJson(user.docs[0].id, user.docs[0].data());
    } catch(e){
      return null;
    }
  }
}