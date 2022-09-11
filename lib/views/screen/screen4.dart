import 'package:flutter/material.dart';
import '../../setting/colors.dart';

class screen4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    var height = screensize.height;
    var width =screensize.width;
    return Scaffold(
      body:
                Center(
                  child: Text(
                    'flamingo.',
                    style: TextStyle(color:AhotColors.primary1,fontSize: 30.0 ,fontWeight: FontWeight.w500),
                  ),
                ),
                );
               
  }
}