import 'package:OrdersDelivery/presentation/Ui/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Other_data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < 20; i++)
          Container(
              height: 100,
              color: AppColors.white,
              margin: EdgeInsets.symmetric(vertical: 5),
              child:
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  Column(children: [
                    Text('id',style: TextStyle(color: AppColors.black,fontSize: 10),),
                    Text('ss',style: TextStyle(color: AppColors.black,fontSize: 10),),
                    Text('New',style: TextStyle(color: AppColors.green,fontSize: 16),)
                  ],),
                  SizedBox(width: 8,),
                  SvgPicture.asset(
                    'Assets/Images/Line.svg',
                  ),
                  SizedBox(width: 8,),
                  Column(children: [
                    Text('id',style: TextStyle(color: AppColors.black,fontSize: 10),),
                    Text('ss',style: TextStyle(color: AppColors.black,fontSize: 10),),
                    Text('New',style: TextStyle(color: AppColors.green,fontSize: 16),)
                  ],),
                  SizedBox(width: 8,),
                  SvgPicture.asset(
                    'Assets/Images/Line.svg',
                  ),
                  SizedBox(width: 8,),
                  Column(children: [
                    Text('id',style: TextStyle(color: AppColors.black,fontSize: 10),),
                    Text('ss',style: TextStyle(color: AppColors.black,fontSize: 10),),
                    Text('New',style: TextStyle(color: AppColors.green,fontSize: 16),)
                  ],),
                  Container(
                    color: AppColors.green,
                    width: 50,
                    child: Column(children: [
                      Text("total",style: TextStyle(color: AppColors.white,fontSize: 8)),
                      SizedBox(height: 20,),
                      SvgPicture.asset(
                        'Assets/Images/ic_back.svg',
                      ),
                    ],),)
                ],)
          ),
      ],
    );
  }
}