import 'package:flutter/material.dart';
import 'package:tiktok_clone/const.dart';
import 'package:tiktok_clone/view/widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

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
            child: Text("Login",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 25,),
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
          const SizedBox(height: 25,),
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
              onTap: (){},
              child: const Center(
                child: Text("Login",
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
                "Don't have an account? ",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              InkWell(
                onTap: (){},
                child: Text(
                  "Register ",
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