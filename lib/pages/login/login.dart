// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class Login extends StatefulWidget {
   const Login ({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _isObscured;
  @override
 void initState() {
    super.initState();
    _isObscured = true;
  }
  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
               Image(image: AssetImage('images/logo.png'),height: 80,),
               SizedBox(
                height: 40,
              ),
           Center(
             child: Text(' SIGN IN',style: TextStyle(
              fontSize: 25,color: Colors.white,
             ),),
           ),
           SizedBox(
            height: 40,
           ),
         
           Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15),
             color:Color.fromARGB(255, 48, 50, 51),
           ),
           child: Column(
             children: [
               TextField(
                // controller: emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 18, color: Colors.white),
                  prefixIcon: Icon(Icons.email,color:Color(0xff45B39D),size: 20,),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 32, 33, 34)),
                )
                ),
               ),
               SizedBox(
                height: 5,
               ),
                 TextField(
                      obscureText: _isObscured,
                      // controller: passwordController,
                      textInputAction: TextInputAction.done,
                                 keyboardType: TextInputType.visiblePassword,
                                 decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 18, color: Colors.white),
                     suffixIcon: IconButton(
                      icon: _isObscured ? const Icon(Icons.visibility,color:Color(0xff45B39D)) : const Icon(Icons.visibility_off,color:Color(0xff45B39D)),
                      onPressed: (){
                        setState(() {
                          _isObscured =!_isObscured;
                        });
                      }, 
                     ),
                    prefixIcon: Icon(Icons.lock,color:Color(0xff45B39D),size: 20,),
                    
                                 focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 32, 33, 34)),
                                 )
                                 ),
                                ),
               SizedBox(
                height: 20,

               ),


               ElevatedButton(onPressed: (){},
                 style: ButtonStyle (
                   minimumSize: MaterialStateProperty.all(Size(380, 40)),
                   backgroundColor: MaterialStateProperty.all(Color(0xff45B39D)),
                   padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                   shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius:BorderRadius.circular(10))),
                 ),
                 child:Text("Login", style: TextStyle(fontSize: 18),),
               ),

      
               SizedBox(
                height: 15,
               ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/forgetpass');
                },
                child: Text('forget Password', style: TextStyle(color: Colors.grey),)),
                  SizedBox(
                height: 15,
               ),
             ],
           ),
           ),
           SizedBox(
                height: 15,
               ),
           Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Not yet a member?',style: TextStyle(
                  color:Colors.white
                )),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Text('   Sign Up',style: TextStyle(
                    color:Color(0xff45B39D),
                  ) ,),
                )
              ], 
            ),
      
          ]),
          
          ),
      ), 
    );
  }
//     Future signIn() async {
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: emailController.text.trim(),
//       password: passwordController.text.trim(),
//       );
//     }
 }