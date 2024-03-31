import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../themes/app_colors.dart';
import 'login_screen.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  void initState() {
    super.initState();
    // Start the timer when the widget is initialized
    Timer(Duration(seconds: 10), () {
      // Navigate to the login screen after 5 seconds
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => login_screen()),
      );
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splash_background,
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child:
              SvgPicture.asset(
                'Assets/Images/orderDelivery.svg',
                width: double.infinity,
                height: 145,
              ),
            ),
          ),
          Stack(
          children: [
          Center(
            child: SvgPicture.asset(
            'Assets/Images/buildings.svg',
            width: double.infinity,
            height: 350,
            ),
          ),
          Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: SvgPicture.asset(
              'Assets/Images/delivery_man.svg',
              width: double.infinity,
              height: 250,
            ),
          ),
          ),
          ],
          ),

        ],
      ),

      // Container(
      //   child: Center(
      //     child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //
      //         children: [
      //          Center(
      //            child: SvgPicture.asset(
      //                        'Assets/Images/OnxLogo.svg',
      //                        width: 150,
      //                        height: 150,
      //                      ),
      //          ),
      //     Align(
      //       alignment: Alignment.bottomCenter,
      //       child: Stack(
      //         alignment: Alignment.bottomCenter,
      //         children: [
      //           Positioned(
      //             bottom: 0,
      //             top: 0,
      //             child: SvgPicture.asset(
      //                             'Assets/Images/buildings.svg',
      //                             width: double.infinity,
      //                             height: 250,
      //                           ),
      //           ),
      //
      //           Positioned(
      //             bottom: 0,
      //             child: SvgPicture.asset(
      //             'Assets/Images/delivery_man.svg',
      //             width: double.infinity,
      //             height: 250,
      //                             ),
      //           ),],),
      //     )
      //     ]
      //   ),
      // )
      // )
    );
  }
}
