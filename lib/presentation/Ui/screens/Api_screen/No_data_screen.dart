import 'package:OrdersDelivery/presentation/Ui/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class No_data_screen extends StatefulWidget {
  const No_data_screen({super.key});

  @override
  State<No_data_screen> createState() => _No_data_screenState();
}

class _No_data_screenState extends State<No_data_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          SvgPicture.asset('Assets/Images/search_pink.svg'),
          SizedBox(height: 20,),
          Text('No orders yet',style: TextStyle(color: AppColors.black,fontWeight: FontWeight.bold,fontSize: 23),),
          SizedBox(height: 15,),
          Text("You dont have any orders in your history.",style: TextStyle(color: AppColors.black,fontWeight: FontWeight.normal,fontSize: 16),)
        ],
        ),
      ),
    );
  }
}
