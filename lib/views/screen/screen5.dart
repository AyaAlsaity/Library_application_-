// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import '../../setting/colors.dart';

// class screen5 extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     var screensize = MediaQuery.of(context).size;
//     var height = screensize.height;
//     var width =screensize.width;
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             width:width,
//             height: 350,
//             color: AhotColors.secondary5.withOpacity(0.5),
//             child: Padding(
//               padding: const EdgeInsets.all(70.0),
//               child: Container(
                
//                 child:CircleAvatar(
//                      backgroundImage:Image.asset('assets/images/image4.jpeg',).image,
//                       radius: 50.0,
//                       backgroundColor: Colors.white,
//                      ),
//               ),
                    
//                       ),
//             ),
           
//             Padding(
//               padding: const EdgeInsets.only(top: 290,left: 100),
//               child: Text("Aya Alsaity",
//               style: TextStyle(fontSize: 27),),
//             ),
//              Padding(
//               padding: const EdgeInsets.only(top: 345),
//               child:Container(
//                 width: width,
//                 height: 80, 
//                 child: Card(
//                   color: AhotColors.primary2,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left:230),
//                         child: Row(
//                           children: [
//                             Icon(Icons.mobile_friendly,size: 16,color: AhotColors.secondary2,),
//                             SizedBox(width: 5,),
//                             Text("092111111   ",
//               style: TextStyle(fontSize:12),),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ) ,
//                 ),
//               ),
//             ),
//               Padding(
//               padding: const EdgeInsets.only(top: 410),
//               child:Container(
//                 width: width,
//                 height: 80, 
//                 child: Card(
//                   color: AhotColors.primary2,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left:130),
//                         child: Row(
//                           children: [
//                             Icon(Icons.email,size: 16,color: AhotColors.secondary2,),
//                             SizedBox(width: 5,),
//                             Text("alsaityaya94@gmail.com",
//               style: TextStyle(fontSize:12),),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ) ,
//                 ),
//               ),
//             ),
         
//          ],
//       ),
//     );
//   }
// }
