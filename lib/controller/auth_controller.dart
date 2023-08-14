import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tiktok_clone/const.dart';
import 'package:tiktok_clone/model/user_model.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<File?> _pickedImage;
  File? get profilePhoto => _pickedImage.value;
  //Pick Image
  void pickImage()async{
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(pickedImage != null){
      Get.snackbar("Picked Image", "Image picked successfully");
    }
    _pickedImage = Rx<File?>(File(pickedImage!.path));
  }

  //upload to firebase storage
  Future<String> _uploadToFirebaseStorage(File image) async{
    Reference ref = firebaseStorage.ref().child('profilePic').child(firebaseAuth.currentUser!.uid);
    UploadTask uploadTask = ref.putFile(image);
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }

  //register a user
  void register(
    String userName,
    String email,
    String password,
    File? image
  )async{
    try{
      if(userName.isNotEmpty && 
      email.isNotEmpty && 
      password.isNotEmpty && 
      image != null){
        //saving info to auth and firebase firestore

        UserCredential cred = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, 
          password: password
        );

        String downloadUrl = await _uploadToFirebaseStorage(image);

        UserModel user = UserModel(email: email, name: userName, uid: cred.user!.uid, profilePhoto: downloadUrl);
        await firestore.collection('users').doc(cred.user!.uid).set(user.toJson());
      }else{
        Get.snackbar("Error creating account", "Please enter all the fields");
      }
    }catch(e){
      Get.snackbar("Error creating account", e.toString());
    }
  }
}