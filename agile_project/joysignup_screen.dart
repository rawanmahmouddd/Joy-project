import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/agile_project/joyhome_screen.dart';
import 'package:untitled/agile_project/joysignin_screen.dart';

class RegisterSccreen extends StatefulWidget {
  const RegisterSccreen({Key? key}) : super(key: key);

  @override
  State<RegisterSccreen> createState() => _RegisterSccreenState();
}

class _RegisterSccreenState extends State<RegisterSccreen> {
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
            "assets/images/log2.jpeg",
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
                      controller: nameController,
                      textInputAction: TextInputAction.next,
                      decoration:  const InputDecoration(
                        label: Text("Name",style: TextStyle(color:Color(0XFFC27C00)),),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFC27C00)), // Custom border color
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFC27C00)), // Custom border color
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFC27C00)), // Custom border color
                        ),
                        prefixIcon: Icon(Icons.person, color: Color(0xFFC27C00)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: emailController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        label: Text("Email",style: TextStyle(color:Color(0XFFC27C00)),),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFC27C00)), // Custom border color
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFC27C00)), // Custom border color
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFC27C00)), // Custom border color
                        ),
                        prefixIcon: Icon(Icons.email, color: Color(0xFFC27C00)),
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
                        label: Text("Password",style: TextStyle(color:Color(0XFFC27C00)),),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFC27C00)), // Custom border color
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFC27C00)), // Custom border color
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFC27C00)), // Custom border color
                        ),
                        prefixIcon: Icon(Icons.lock, color: Color(0xFFC27C00)),
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
                    const SizedBox(height: 20),
                    Container(
                      height: 40,
                      width: 250,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(30),
                        color:const Color(0xFFC27C0FFC27C00)
                      ),
                      child: Center(
                          child: ElevatedButton(
                            onPressed:() {
                            String email=emailController.text;
                            String password=passwordController.text;
                            createAccount(email, password);
                            if (!formKey.currentState!.validate()){
                            return;
                            }
                            Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => JoyHomeScreen(),),);
                           },
                            style: const ButtonStyle(
                                elevation: MaterialStatePropertyAll(0),
                                backgroundColor:MaterialStatePropertyAll(Colors.transparent)
                            ),
                            child:const Text("SIGN UP",style:TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),),)
                      ),
                    ),
                    const SizedBox(height: 5),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Already have an Account?",style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight:FontWeight.bold
                          ),),
                           TextButton(onPressed: (){
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInSccreen(),),);
                           },
                               child:Text("Sign In",style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 17,
                                 color: Colors.black,
                               ),),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void createAccount(String emailAddress, String password) async {
    try {
      final credential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      onRegisterSuccess();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        Fluttertoast.showToast(msg: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        Fluttertoast.showToast(
            msg: "The account already exists for that email.");
      }
    } catch (e) {
      print(e);
      Fluttertoast.showToast(msg: e.toString());
    }
  }

  void onRegisterSuccess() {
    saveUserData();
    Fluttertoast.showToast(msg: "Account Created!");
    Navigator.pop(context);
  }

  void saveUserData() {
    final userId = auth.currentUser!.uid;
    final data = {
      "id": userId,
      "name": nameController.text,
      "email": emailController.text,
    };
    firestore.collection("users").doc(userId).set(data);
  }
}