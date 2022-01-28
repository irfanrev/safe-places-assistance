import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:safe_place/screen/dialog_screen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Stack(
            children: [
              Image.asset(
                'assets/img/bg.png',
              ),
              SingleChildScrollView(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NPU',
                            style: GoogleFonts.poppins(
                                fontSize: 35,
                                color: Colors.green[500],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Safe Places Assistance',
                            style:
                                GoogleFonts.poppins(color: Colors.green[500]),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 110,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/logo/npu.png',
                            height: 110,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Image.asset(
                            'assets/logo/spa.png',
                            height: 110,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style: GoogleFonts.poppins(color: Colors.green),
                        )),
                    ElevatedButton(
                      onPressed: () {
                        Get.snackbar('Success', 'Login Success!');
                        Get.to(DialogScreen(), transition: Transition.fadeIn);
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(fontSize: 20),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[400],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'or',
                      style: GoogleFonts.poppins(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 55, vertical: 15),
                        child: Text(
                          'Create Account',
                          style: GoogleFonts.poppins(fontSize: 20),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
