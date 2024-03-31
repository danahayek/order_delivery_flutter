import 'package:OrdersDelivery/presentation/Ui/screens/Api_screen/New_data.dart';
import 'package:OrdersDelivery/presentation/Ui/screens/Api_screen/Others_data.dart';
import 'package:OrdersDelivery/presentation/Ui/themes/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toggle_switch/toggle_switch.dart';
class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.red,
              height: 100,
              width: double.infinity,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
        
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 30),
                  child: Column(children: [
                    Text("Ahmed",style: TextStyle(fontSize: 25,color: AppColors.white,fontWeight: FontWeight.normal),),
                    Text("Othman",style: TextStyle(fontSize: 25,color: AppColors.white,fontWeight: FontWeight.bold),)
                  ],
                  ),
                ),
                Container(
                  width: 100,
                  height: double.infinity,
                  child: Stack(
                      children: [
        
                        SvgPicture.asset(
                          width: 150,
                          height: 120,
                         'Assets/Images/blue_design.svg',
                                        ),
                        Positioned(
                          top: 30, // Adjust position as needed
                          left: 30, // Adjust position as needed
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
                        ),
                    // Image.asset("Assets/Images/boxman.png",width: 100,height: 100,fit: BoxFit.fill,),
        
                      ]
                  ),
                ),
        
              ],) ,
            ),
            SizedBox(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ToggleSwitch(
                  minWidth: 90.0,
                  initialLabelIndex: _currentIndex,
                  labels: ['New', 'Others'],
                  onToggle: (index) {
                    setState(() {
                      _currentIndex = index!;
                    });
                  },
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  child: _currentIndex == 0 ? New_data() : Other_data(),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }


}

