import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  String name;
  String email;
  String uid;
  String profilePhoto;

  UserModel({
    required this.email,
    required this.name,
    required this.uid,
    required this.profilePhoto,
  });

  Map <String, dynamic> toJson() =>{
    "name": name,
    "email": email,
    "uid": uid,
    "profilePhoto": profilePhoto,
  };

  static UserModel fromSnap(DocumentSnapshot snap){
    var snapshot = snap.data() as Map <String, dynamic>;
    return UserModel(
      email: snapshot['email'], 
      name: snapshot['name'], 
      uid: snapshot["uid"], 
      profilePhoto: snapshot["profilePhoto"]
    );
  }
}