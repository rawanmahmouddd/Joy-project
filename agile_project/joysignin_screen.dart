import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/agile_project/joyhome_screen.dart';
import 'package:untitled/shared.dart';

class SignInSccreen extends StatefulWidget {
  const SignInSccreen({Key? key}) : super(key: key);

  @override
  State<SignInSccreen> createState() => _SignInSccreenState();
}
class _SignInSccreenState extends State<SignInSccreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const SizedBox(height:20),
          Image.asset(
            "assets/images/logo3.jpeg",
            width:double.infinity,
            height: 800,
            fit: BoxFit.fill,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 100), // Adjust the spacing as needed
                    TextFormField(
                      controller: emailController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        label: Text("Email",style: TextStyle(color:Color(0x0766AD0766AD)),),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x0766AD0766AD)), // Custom border color
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x0766AD0766AD)), // Custom border color
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x0766AD0766AD)), // Custom border color
                        ),
                        prefixIcon: Icon(Icons.email, color: Color(0x0766AD0766AD)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email is required";
                        }
                        if (!value.contains("@") || !value.contains(".")) {
                          return "Invalid email";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: passwordController,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text("Password",style: TextStyle(color:Color(0x0766AD0766AD)),),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x0766AD0766AD)), // Custom border color
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x0766AD0766AD)), // Custom border color
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x0766AD0766AD)), // Custom border color
                        ),
                        prefixIcon: Icon(Icons.lock, color: Color(0x0766AD0766AD)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password is required";
                        }
                        if (value.length < 6) {
                          return "Password must be at least 6 characters";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(" Forget password?",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0x0766AD0766AD)
                      ),),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 40,
                      width: 250,
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(30),
                          color:const Color(0x0766AD0766AD)
                      ),
                      child: Center(
                          child: ElevatedButton(onPressed: ()=>login(),
                            style: const ButtonStyle(
                                elevation: MaterialStatePropertyAll(0),
                                backgroundColor:MaterialStatePropertyAll(Colors.transparent)
                            ),
                            child:const Text("SIGN IN",style:TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),),)
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void login()
  {
    if (!formKey.currentState!.validate()) {
      return;
    }
    String email = emailController.text;
    String password = passwordController.text;

    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      // Successful login
      savedLoggedIn();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => JoyHomeScreen()),
      );
    }).catchError((error) {
      displaySnakeBar("email & password is wrong");
    });
  }
  void displaySnakeBar(String message)
  {
    var snakeBar=SnackBar(
      content:Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snakeBar);
  }
  void displayToast(String message)
  {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );

  }
  void savedLoggedIn()async
  {
    PreferenceUtils.setBool(PrefKeys.loggedIn, true);
  }

}

