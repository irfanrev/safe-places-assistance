import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:safe_place/util/loading_screen.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Stack(
            children: [
              Image.asset('assets/img/bg.png'),
              SizedBox.expand(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green[400]),
                      child: Icon(
                        Icons.person_rounded,
                        size: 110,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Welcome, Opie Sopyan',
                      style: GoogleFonts.poppins(fontSize: 24),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      'Need Assistance ?',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Get.to(Loading(), transition: Transition.fadeIn);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 12.0),
                              child: Text(
                                'Yes',
                                style: GoogleFonts.poppins(fontSize: 18),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.defaultDialog(
                                  title: 'Warning',
                                  middleText:
                                      "You'are running without assistance now!",
                                  onConfirm: () {
                                    Get.to(Loading());
                                  });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 12.0),
                              child: Text(
                                'No',
                                style: GoogleFonts.poppins(fontSize: 18),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
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
            ],
          ),
        ),
      ),
    );
  }
}
