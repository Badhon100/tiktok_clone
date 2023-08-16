import 'package:flutter/material.dart';
import 'package:tiktok_clone/const.dart';
import 'package:tiktok_clone/view/widgets/text_input_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Tiktok clone",
              style: TextStyle(
                color: buttonColor,
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const Center(
            child: Text("Sign Up",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 15,),
          Stack(
            children: [
              const CircleAvatar(
                radius: 64,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://media.istockphoto.com/id/1341046662/vector/picture-profile-icon-human-or-people-sign-and-symbol-for-template-design.jpg?s=612x612&w=0&k=20&c=A7z3OK0fElK3tFntKObma-3a7PyO8_2xxW0jtmjzT78='),
              ),
              Positioned(
                bottom: -10,
                left: 80,
                child: IconButton(
                  onPressed: ()=>authController.pickImage(),
                  // onPressed: ()=> authController.pickImage(),
                  icon: Icon(Icons.add_a_photo, color: buttonColor,),
                )
              )
            ],
          ),
          const SizedBox(height: 15,),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child:TextInputField(
              controller: _userNameController,
              icon: Icons.person,
              labelText: "Username",
              isObscured: false,
            )
          ),
          const SizedBox(height: 15,),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child:TextInputField(
              controller: _emailController,
              icon: Icons.email,
              labelText: "Email",
              isObscured: false,
            )
          ),
          const SizedBox(height: 15,),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child:TextInputField(
              controller: _passwordController,
              icon: Icons.lock,
              labelText: "Password",
              isObscured: true,
            )
          ),
          const SizedBox(height: 30,),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width-40,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: const BorderRadius.all(Radius.circular(5))
            ),
            child: InkWell(
              onTap: ()=> authController.registerUser(
                _userNameController.text, 
                _emailController.text, 
                _passwordController.text,
                authController.profilePhoto
              ),
              child: const Center(
                child: Text("Sign Up",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account? ",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              InkWell(
                onTap: (){
                  
                },
                child: Text(
                  "Login ",
                  style: TextStyle(
                    fontSize: 20,
                    color: buttonColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}