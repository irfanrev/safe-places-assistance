import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:safe_place/screen/mapbox_screen.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Stack(
            children: [
              Image.asset('assets/img/bg.png'),
              SizedBox.expand(
                child: FutureBuilder(
                    future: Future.delayed(Duration(seconds: 5)),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return MapBox();
                      }
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            height: 250,
                            child: Lottie.asset('assets/lottie/loader.json'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Finding nearest safe places.....',
                            style: GoogleFonts.poppins(fontSize: 24),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
