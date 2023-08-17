import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_clone/const.dart';
import 'package:tiktok_clone/controller/auth_controller.dart';
import 'package:tiktok_clone/firebase_options.dart';
import 'package:tiktok_clone/view/screens/auth/login_screens.dart';
import 'package:tiktok_clone/view/screens/auth/signup_screen.dart';
import 'package:tiktok_clone/view/screens/home_screen.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  ).then((value){
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiktok clone', 
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home: StreamBuilder(
        stream: firebaseAuth.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return HomeScreen();
          }else{
            return LoginScreen();
          }
        }
      ),
    );
  }
}
