import 'package:OrdersDelivery/presentation/Ui/screens/Home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../themes/app_colors.dart';
class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  final TextEditingController _userIDController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isNextButtonEnabled = false;
  @override
  void initState() {
    super.initState();
    _userIDController.addListener(updateNextButtonState);
    _passwordController.addListener(updateNextButtonState);
  }

  void updateNextButtonState() {
    setState(() {
      isNextButtonEnabled = _userIDController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.white,
      body: 
      SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 40),
                  child: SvgPicture.asset(
                    alignment: Alignment.bottomLeft,
                    width: 80,
                    height: 80,
                    'Assets/Images/orderDelivery.svg',
                  ),
                ),
        
                SizedBox(width: 50,),
                Stack(
                  alignment:Alignment.topRight ,
                  children: [SvgPicture.asset(
                    'Assets/Images/red_design.svg',
                    width: 115,
                  ),
                    Positioned(
                      top: 50, // Adjust position as needed
                      left: 50, // Adjust position as needed
                      child: IconButton(
                        onPressed: (){
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  'Choose Language',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                content: Container(
                                  width: 200, // Set the width of the content
                                  height: 120, // Set the height of the content
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          // Arabic container
                                          Container(
                                            decoration: BoxDecoration(
                                              color: AppColors.white,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            width: 100,
                                            height: 50,
                                            child: MaterialButton(
                                              onPressed: () {
                                                // Button onPressed action
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  SvgPicture.asset(
                                                    'Assets/Images/Arabic Flag.svg',
                                                  ),
                                                  SizedBox(width: 5), // Add spacing between icon and text
                                                  Text(
                                                    'العربية',
                                                    style: TextStyle(
                                                      color: AppColors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          // English container
                                          Container(
                                            decoration: BoxDecoration(
                                              color: AppColors.light_green,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            width: 110,
                                            height: 50,
                                            child: MaterialButton(
                                              onPressed: () {
                                                // Button onPressed action
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  SvgPicture.asset(
                                                    'Assets/Images/English Flag.svg',
                                                  ),
                                                  SizedBox(width: 5), // Add spacing between icon and text
                                                  Text(
                                                    'English',
                                                    style: TextStyle(
                                                      color: AppColors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      // Apply button
                                      Container(
                                        width: 200,
                                        height: 50,
                                        child: MaterialButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          color: AppColors.green,
                                          textColor: AppColors.white,
                                          child: Text(
                                            'Apply',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
        
                        },
                        icon: SvgPicture.asset(
                          'Assets/Images/white_location.svg', // Path to your second SVG image
                          width:25,
                          height: 25,
        
                        ),
                      ),
                    ),]
                ),
        
                /////
        
              ],
            ),
            SizedBox(height: 150,),
            Text("Welcome Back!",style: TextStyle(color: AppColors.green,fontSize: 29,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Log back into your account",style: TextStyle(color: AppColors.green,fontSize: 12,fontWeight: FontWeight.normal),),
            SizedBox(height: 40,),
            //user id
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: TextFormField(
                controller: _userIDController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'User ID',
                  border: InputBorder.none,
                  filled: true,
                  fillColor: AppColors.grey,
                  labelStyle: TextStyle(color: Colors.black),
                ),
                style: TextStyle(
                  height: 1, // Adjust the height here
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your User ID';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 15,),
            //password
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: InputBorder.none,
                  filled: true,
                  fillColor: AppColors.grey,
                  labelStyle: TextStyle(color: Colors.black),
                ),
                style: TextStyle(
                  height: 1, // Adjust the height here
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 20,),
            Text("Show More",textAlign: TextAlign.left,style: TextStyle(color: AppColors.green,fontSize: 14,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
           //log in button
            Container(
              width: 350,
              height: 50,
              child: ElevatedButton(style:
                  ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.background_button), // Background color
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Border radius
                  ),
                  ),
                  ),
                onPressed: isNextButtonEnabled
                    ? () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Home_screen()),
                  );
                }
                    : null,
                child: Text(
                  "Log in",
                  style: TextStyle(color: AppColors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 30,),
            SvgPicture.asset(
              'Assets/Images/delivery_car.svg',
              width: 145,
              height: 145,
            ),
          ],
        ),
      ),
    );
  }
}
