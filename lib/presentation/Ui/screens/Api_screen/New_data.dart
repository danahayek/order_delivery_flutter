import 'dart:convert';

import 'package:OrdersDelivery/presentation/Ui/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class New_data extends StatefulWidget {
  @override
  State<New_data> createState() => _New_dataState();
}

class _New_dataState extends State<New_data> {
  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('Assets/data.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["item"];
      print("..number of items ${_items.length}");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
    _items.isNotEmpty?Expanded(
    child: ListView.builder(
    itemCount: _items.length,
    itemBuilder: (context, index) {
    return Card(
    key: ValueKey(_items[index]["id"]),
    margin: const EdgeInsets.all(10),
    color: Colors.white,
    child: ListTile(
    leading: Text(_items[index]["name"]),
    title: Text(_items[index]["name"]),
    subtitle: Text(_items[index]["name"]),
    ),
    );
    },
    ),
    ): ElevatedButton(
    onPressed: () {
    readJson();
    },
    child: Center(child: Text("Load Json")))
    ],
    );
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     for (int i = 0; i < 20; i++)
    //       Container(
    //           height: 100,
    //           color: AppColors.white,
    //           margin: EdgeInsets.symmetric(vertical: 5),
    //           child:
    //           Row(
    //             mainAxisAlignment:MainAxisAlignment.spaceAround,
    //             children: [
    //               Column(children: [
    //                 Text('id',style: TextStyle(color: AppColors.black,fontSize: 10),),
    //                 Text('ss',style: TextStyle(color: AppColors.black,fontSize: 10),),
    //                 Text('New',style: TextStyle(color: AppColors.green,fontSize: 16),)
    //               ],),
    //               SizedBox(width: 8,),
    //               SvgPicture.asset(
    //                 'Assets/Images/Line.svg',
    //               ),
    //               SizedBox(width: 8,),
    //               Column(children: [
    //                 Text('id',style: TextStyle(color: AppColors.black,fontSize: 10),),
    //                 Text('ss',style: TextStyle(color: AppColors.black,fontSize: 10),),
    //                 Text('New',style: TextStyle(color: AppColors.green,fontSize: 16),)
    //               ],),
    //               SizedBox(width: 8,),
    //               SvgPicture.asset(
    //                 'Assets/Images/Line.svg',
    //               ),
    //               SizedBox(width: 8,),
    //               Column(children: [
    //                 Text('id',style: TextStyle(color: AppColors.black,fontSize: 10),),
    //                 Text('ss',style: TextStyle(color: AppColors.black,fontSize: 10),),
    //                 Text('New',style: TextStyle(color: AppColors.green,fontSize: 16),)
    //               ],),
    //               Container(
    //                 color: AppColors.green,
    //                 width: 50,
    //                 child: Column(children: [
    //                   Text("total",style: TextStyle(color: AppColors.white,fontSize: 8)),
    //                   SizedBox(height: 20,),
    //                   SvgPicture.asset(
    //                     'Assets/Images/ic_back.svg',
    //                   ),
    //                 ],),)
    //             ],)
    //       ),
    //   ],
    // );
  }
}