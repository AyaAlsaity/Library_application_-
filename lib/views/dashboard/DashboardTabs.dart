// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_application_3/views/screen/screen1.dart';
// import 'package:flutter_application_3/views/screen/screen2.dart';
// import '../../setting/colors.dart';



// class DashboardTabs extends StatefulWidget {
//   @override
//   _DashboardTabsState createState() => _DashboardTabsState();
// }

// class _DashboardTabsState extends State<DashboardTabs> {
  
  
//   late List<StatefulWidget> _screens;

//    var currentIndex ;

//   @override
//   void initState() {
//     super.initState();
//     currentIndex = 0;
//   }

//   @override
//   Widget build(BuildContext context) {
//     double _width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: IndexedStack(
//         index: currentIndex,
//         children: _buildScreens(),
//       ),
//      bottomNavigationBar: Container(
//         margin: EdgeInsets.all(_width * .05),
//         height: _width * .155,
//         decoration: BoxDecoration(
//           color: AhotColors.primary1,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(.2),
//               blurRadius: 32,
//               offset: Offset(0, 10),
//             ),
//           ],
//           borderRadius: BorderRadius.circular(40),
//         ),
//         child: ListView.builder(
//           itemCount: 3,
//           scrollDirection: Axis.horizontal,
//           padding: EdgeInsets.symmetric(horizontal: _width * .02),
//           itemBuilder: (context, index) => InkWell(
//             onTap: () {
//               setState(() {
//                 currentIndex = index;
//                 HapticFeedback.lightImpact();
//                 children: _buildScreens();
//               });
//             },
//             splashColor: Colors.transparent,
//             highlightColor: Colors.transparent,
//             child: Stack(
//               children: [
//                 AnimatedContainer(
//                   duration: Duration(seconds: 1),
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   width: index == currentIndex ? _width * .32 : _width * .18,
//                   alignment: Alignment.center,
//                   child: AnimatedContainer(
//                     duration: Duration(seconds: 1),
//                     curve: Curves.fastLinearToSlowEaseIn,
//                     height: index == currentIndex ? _width * .12 : 0,
//                     width: index == currentIndex ? _width * .32 : 0,
//                     decoration: BoxDecoration(
//                       color: index == currentIndex
//                           ? AhotColors.primary2.withOpacity(.2)
//                           : Colors.transparent,
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//                 ),
//                 AnimatedContainer(
//                   duration: Duration(seconds: 1),
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   width: index == currentIndex ? _width /3 : _width /3.8,
//                   alignment: Alignment.center,
//                   child: Stack(
//                     children: [
//                       Row(
//                         children: [
//                           AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             curve: Curves.fastLinearToSlowEaseIn,
//                             width: index == currentIndex ? _width * .13 : 0,
//                           ),
//                           AnimatedOpacity(
//                             opacity: index == currentIndex ? 1 : 0,
//                             duration: Duration(seconds: 1),
//                             curve: Curves.fastLinearToSlowEaseIn,
//                             child: Text(
//                               index == currentIndex
//                                   ? '${listOfTitles[index]}'
//                                   : '',
//                               style: TextStyle(
//                                 color: AhotColors.primary1,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 15,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           AnimatedContainer(
// duration: Duration(seconds: 1),
//                             curve: Curves.fastLinearToSlowEaseIn,
//                             width: index == currentIndex ? _width * .03 : 20,
//                           ),
//                           Icon(
//                             listOfIcons[index],
//                             size: _width * .076,
//                             color: index == currentIndex
//                                 ? AhotColors.primary1
//                                 : AhotColors.primary2,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
    
//   }

  
//   List<StatefulWidget> _buildScreens() {
//     _screens = <StatefulWidget>[
//       screen2(),
//       screen2(),
//       screen2(),
     
//     ];
//     return _screens;
//   }

//    List<IconData> listOfIcons = [
//     Icons.home_rounded,
//     Icons.favorite_rounded,
//     Icons.person_rounded,
//   ];

//   List<String> listOfTitles = [
//     'Home',
//     'Favorite',
//     'Account',
//   ];
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/shared/component/component.dart';
import 'package:flutter_application_3/views/dashboard/DashboardTabs.dart';
import 'package:flutter_application_3/views/screen/screen1.dart';
import 'package:flutter_application_3/views/screen/screen2.dart';
import '../../setting/colors.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/screen/screen3.dart';
import '../../setting/colors.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../data/Data.dart';

import 'package:flutter/material.dart';
// import 'package:flutter_application_3/views/screen/screen1.dart';
// import 'package:flutter_application_3/views/screen/screen2.dart';

class Drawer6 extends StatefulWidget {
  const Drawer6({Key? key}) : super(key: key);

  @override
  __Drawer6Page createState() => __Drawer6Page();
}

class __Drawer6Page extends State<Drawer6> {
  @override
  Widget build(BuildContext context) {
    return 
    const AnimatedDrawerScreen();
  }
}

class AnimatedDrawerScreen extends StatefulWidget {
  const AnimatedDrawerScreen({Key? key}) : super(key: key);

  @override
  _AnimatedDrawerState createState() => _AnimatedDrawerState();
}

class _AnimatedDrawerState extends State<AnimatedDrawerScreen> {
  late Widget? screenView;
  late DrawerIndex drawerIndex;
  late AnimationController sliderAnimationController;
  static const String home = 'Home page';
  // static const String message = 'Message';
  static const String profile = 'Profile';
  static const String notification = 'Notification';

  @override
  void initState() {
    drawerIndex = DrawerIndex.HOME;

    /// first  Item in drawer
    screenView =  screen2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.grey,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          drawerScrimColor: Colors.lime,
          body: DrawerUserController(

            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            animationController: (AnimationController animationController) {
              sliderAnimationController = animationController;
            },
            onDrawerCall: (DrawerIndex drawerIndexdata) {
              changeIndex(drawerIndexdata);
            },
            screenView: screenView,
          ),
        ),
      ),
    
  );
  }

  /// changing current item in drawer

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      if (drawerIndex == DrawerIndex.HOME) {
        setState(() {
          screenView =  const screen2();
        });
      } 
      } else if (drawerIndex == DrawerIndex.Profile) {
        setState(() {
          screenView =  screen5();
        });
      } else {
         setState(() {
          screenView =  screen1();
        }); 
      }
    }
  }//Aya fghggh


/// Item in drawer
/// 
class screen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    var height = screensize.height;
    var width =screensize.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/image1.jpeg',height: height,width: width,fit: BoxFit.fill,),
          Padding(
            padding: const EdgeInsets.only(bottom:85),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Center(
                  child: Text(
                    'flamingo.',
                    style: TextStyle(color:AhotColors.primary1,fontSize: 30.0 ,fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 20.0,),
                Center(
                 child:TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(AhotColors.primary1),
                      backgroundColor:MaterialStateProperty.all<Color>(AhotColors.primary2),
                      shadowColor:MaterialStateProperty.all<Color>(AhotColors.secondary2),
                      elevation:MaterialStateProperty.all<double>(1),
                      overlayColor:MaterialStateProperty.all<Color>(AhotColors.secondary4.withOpacity(0.2)),
                      shape:MaterialStateProperty.all<OutlinedBorder>( RoundedRectangleBorder(borderRadius:BorderRadius.circular(25)),) ,
                      animationDuration:Duration(seconds:0),
                      minimumSize:  MaterialStateProperty.all<Size>(Size(170, 50)),
                    ),
                    onPressed: () { 
                      // Navigator.of(context)
                      //  .push(MaterialPageRoute(builder: (context) =>DashboardTabs()));      
                    },
                    child: Text(
                     'start reading',
                    ),
                    clipBehavior:Clip.none,
                  ) ,       
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  _screen2 createState() => _screen2();
}

class _screen2 extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    var height = screensize.height;
    var width =screensize.width;
    final int likeCount =999;
   
     
    return Scaffold(
      body:  
     
         ListView.separated(
          itemBuilder:(context , index) => buldbody(index,context,width,height,likeCount),
          separatorBuilder: (context , index)=>SizedBox(
            width:0.0,
          ),
          itemCount:1,
        ),        
             
        
    );
  }

}
Future<bool> onLikeButtonTapped(bool isLiked) async {
  return !isLiked;
}

Widget buldbody(int index,context,width,height,likeCount) =>
   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
                 children: [
                    Container(
                    height: 295,
                    width:width,
                    child: Stack(
                      children: [
                       Positioned(
                         bottom: 0,
                         top: -150,
                         left: -10,
                         right: -10,
                         child: Container(
                         width: width,
                        child:Card(
                          color:Colors.pink[50]!.withOpacity(0.5),
                          elevation:0,
                          shape: 
                            RoundedRectangleBorder(borderRadius:BorderRadius.circular(50)),
                
                        ),
                        ),

                       ),
                     
                       Positioned(
                         bottom: 0,
                         right: -200,
                         top: -330,
                         child: Container(
                         width: 320,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           color:Colors.pink[100]!.withOpacity(0.7),
                         ),
                        ), 
                       ),
                     
                    ],),
                   ),
           
                   Padding(
                     padding: EdgeInsets.only(top:120,right:100,left: 30),
                     child: Text(
                        'What are you reading today?',
                        style: TextStyle(color:AhotColors.primary1,fontSize: 20.0),
                      ),
                    ),
                    SingleChildScrollView(
             scrollDirection:Axis.horizontal,
             child: Row(
                children: [
                Stack(
                   children: [
                      Padding(
                        padding: const EdgeInsets.only(top:220,left: 20,right: 20),
                        child:
            Container(
            width:230 ,
            height:230 ,
            child:Card(
            color: AhotColors.primary2,
            shadowColor: Colors.grey[300],
            clipBehavior: Clip.antiAlias,
            elevation:6,
            shape: 
                RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
            ),
          ),
          ),
           Row(
                 children: [
                   Padding(
               padding: EdgeInsets.only(left:55,top:195 ),
               child:Container(
                    width:100 ,
                    height:140 ,
                    child:Card(
                      elevation: 10,
                     shadowColor: AhotColors.secondary2,
                      child:Image.asset(books[0]["image"],fit: BoxFit.fill,),
                    ),
                    ),
                   ),
                    SizedBox(width:18,),
                      Padding(
               padding: EdgeInsets.only(top:140 ),
               child:Container(
                            width:70,
                            height:50,
                         child: LayoutBuilder(
                  builder: (c, data) {
                    final crossAxisCount = data.maxWidth ~/ 160.0 +1;
                    return GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount),
                      children: <Widget>[
                        LikeButton(
                            size: 20,
                            likeCount: likeCount,
                            countBuilder: (int? count, bool isLiked, String text) {
                              var color = isLiked ? Colors.pinkAccent : Colors.grey;
                              Widget result;
                              if (count == 0) {
                                result = Text(
                                  "love",
                                  style: TextStyle(color: color,fontSize:16),
                                );
                              } else {
                                result = Text(
                                  count! >= 1000
                                      ? (count / 1000.0).toStringAsFixed(1) + "k"
                                      : text,
                                  style: TextStyle(color: color,fontSize: 12),
                                );
                              }
                              return result;
                            },
                            likeCountAnimationType: likeCount < 1000
                                ? LikeCountAnimationType.part
                                : LikeCountAnimationType.none,
                            likeCountPadding: const EdgeInsets.only(left: 5),
                            onTap: onLikeButtonTapped,
                        ),
                     ],
                    );
                  },
              ),
        
                     ),
           ),
                 ],
               ), 
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left:50,top:350 ),
                    child: Text(
                     books[0]["name"],
                     style: TextStyle(
                       fontSize:12,
                     ),
                    ),
                ),
                SizedBox(height:2,),
                Text(
                     books[0]["Info"],
                     style: TextStyle(
                       fontSize:12,
                       color: AhotColors.secondary2,
                     ),
                    ),
                 
              ],
            ),
                  
                Padding(
                        padding:const EdgeInsets.only(top:406,left:135),
                           child:
                           AnimatedButton(
                height: 32,
                width: 110,
                text: 'Read',
                isReverse: true,
                textStyle:const TextStyle(color: Colors.white, fontSize:10),
                selectedTextColor:Colors.white,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                backgroundColor:Colors.black.withOpacity(0.9),
                borderColor:Colors.black.withOpacity(0.9),
                selectedBackgroundColor:Colors.black.withOpacity(0.9),
                borderRadius:16,
                borderWidth: 2,
                onPress: () {
                  Navigator.of(context)
                       .push(MaterialPageRoute(builder: (context) =>screen3(index1:0,)));      
                   
                },
              ),
                     
                      ),
                       Padding(
                        padding:const EdgeInsets.only(top:406,left:23),
                           child:AnimatedButton(
                height: 32,
                width: 110,
                text: 'Details',
                isReverse: true,
                textStyle:const TextStyle(color: AhotColors.primary1, fontSize:10),
                selectedTextColor:AhotColors.primary2,
                selectedBackgroundColor:AhotColors.primary1,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                backgroundColor:AhotColors.primary2,
                borderColor:AhotColors.primary2,
                borderRadius:16,
                borderWidth: 2,
                onPress: () {},
              ),
                     
                      ),
                      ],
                 ),
           
                    Stack(
                   children: [
                      Padding(
                        padding: const EdgeInsets.only(top:220,left: 20,right: 20),
                        child:
            Container(
            width:230 ,
            height:230 ,
            child:Card(
            color: AhotColors.primary2,
            shadowColor: Colors.grey[300],
            clipBehavior: Clip.antiAlias,
            elevation:6,
            shape: 
                RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
            ),
          ),
          ),
           Row(
                 children: [
                   Padding(
               padding: EdgeInsets.only(left:55,top:195 ),
               child:Container(
                    width:100 ,
                    height:140 ,
                    child:Card(
                      elevation: 10,
                     shadowColor: AhotColors.secondary2,
                      child:Image.asset(books[1]["image"],fit: BoxFit.fill,),
                    ),
                    ),
                   ),
                    SizedBox(width:18,),
                      Padding(
               padding: EdgeInsets.only(top:140 ),
               child:Container(
                            width:70,
                            height:50,
                         child: LayoutBuilder(
                  builder: (c, data) {
                    final crossAxisCount = data.maxWidth ~/ 160.0 +1;
                    return GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount),
                      children: <Widget>[
                        LikeButton(
                            size: 20,
                            likeCount: likeCount,
                            countBuilder: (int? count, bool isLiked, String text) {
                              var color = isLiked ? Colors.pinkAccent : Colors.grey;
                              Widget result;
                              if (count == 0) {
                                result = Text(
                                  "love",
                                  style: TextStyle(color: color,fontSize:16),
                                );
                              } else {
                                result = Text(
                                  count! >= 1000
                                      ? (count / 1000.0).toStringAsFixed(1) + "k"
                                      : text,
                                  style: TextStyle(color: color,fontSize: 12),
                                );
                              }
                              return result;
                            },
                            likeCountAnimationType: likeCount < 1000
                                ? LikeCountAnimationType.part
                                : LikeCountAnimationType.none,
                            likeCountPadding: const EdgeInsets.only(left: 5),
                            onTap: onLikeButtonTapped,
                        ),
                     ],
                    );
                  },
              ),
        
                     ),
           ),
                 ],
               ), 
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left:50,top:350 ),
                    child: Text(
                     books[1]["name"],
                     style: TextStyle(
                       fontSize:12,
                     ),
                    ),
                ),
                SizedBox(height:2,),
                Text(
                     books[1]["Info"],
                     style: TextStyle(
                       fontSize:12,
                       color: AhotColors.secondary2,
                     ),
                    ),
                 
              ],
            ),    
                
                      Padding(
                        padding:const EdgeInsets.only(top:406,left:135),
                           child:AnimatedButton(
                height: 32,
                width: 110,
                text: 'Read',
                isReverse: true,
                textStyle:const TextStyle(color: Colors.white, fontSize:10),
                selectedTextColor:Colors.white,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                backgroundColor:Colors.black.withOpacity(0.9),
                borderColor:Colors.black.withOpacity(0.9),
                selectedBackgroundColor:Colors.black.withOpacity(0.9),
                borderRadius:16,
                borderWidth: 2,
                onPress: () {
                  Navigator.of(context)
                       .push(MaterialPageRoute(builder: (context) =>screen3(index1:1,)));      
                   
                },
              ),
                     
                      ),
                       Padding(
                        padding:const EdgeInsets.only(top:406,left:23),
                           child:AnimatedButton(
                height: 32,
                width: 110,
                text: 'Details',
                isReverse: true,
                textStyle:const TextStyle(color: AhotColors.primary1, fontSize:10),
                selectedTextColor:AhotColors.primary2,
                selectedBackgroundColor:AhotColors.primary1,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                backgroundColor:AhotColors.primary2,
                borderColor:AhotColors.primary2,
                borderRadius:16,
                borderWidth: 2,
                onPress: () {},
              ),
                     
                      ),
                     ],
                 ),
           
                  Stack(
                   children: [
                      Padding(
                        padding: const EdgeInsets.only(top:220,left: 20,right: 20),
                        child:
            Container(
            width:230 ,
            height:230 ,
            child:Card(
            color: AhotColors.primary2,
            shadowColor: Colors.grey[300],
            clipBehavior: Clip.antiAlias,
            elevation:6,
            shape: 
                RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
            ),
          ),
          ),
           Row(
                 children: [
                   Padding(
               padding: EdgeInsets.only(left:55,top:195 ),
               child:Container(
                    width:100 ,
                    height:140 ,
                    child:Card(
                      elevation: 10,
                     shadowColor: AhotColors.secondary2,
                      child:Image.asset(books[0]["image"],fit: BoxFit.fill,),
                    ),
                    ),
                   ),
                    SizedBox(width:18,),
                      Padding(
               padding: EdgeInsets.only(top:140 ),
               child:Container(
                            width:70,
                            height:50,
                         child: LayoutBuilder(
                  builder: (c, data) {
                    final crossAxisCount = data.maxWidth ~/ 160.0 +1;
                    return GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount),
                      children: <Widget>[
                        LikeButton(
                            size: 20,
                            likeCount: likeCount,
                            countBuilder: (int? count, bool isLiked, String text) {
                              var color = isLiked ? Colors.pinkAccent : Colors.grey;
                              Widget result;
                              if (count == 0) {
                                result = Text(
                                  "love",
                                  style: TextStyle(color: color,fontSize:16),
                                );
                              } else {
                                result = Text(
                                  count! >= 1000
                                      ? (count / 1000.0).toStringAsFixed(1) + "k"
                                      : text,
                                  style: TextStyle(color: color,fontSize: 12),
                                );
                              }
                              return result;
                            },
                            likeCountAnimationType: likeCount < 1000
                                ? LikeCountAnimationType.part
                                : LikeCountAnimationType.none,
                            likeCountPadding: const EdgeInsets.only(left: 5),
                            onTap: onLikeButtonTapped,
                        ),
                     ],
                    );
                  },
              ),
        
                     ),
           ),
                 ],
               ), 
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left:50,top:350 ),
                    child: Text(
                     books[0]["name"],
                     style: TextStyle(
                       fontSize:12,
                     ),
                    ),
                ),
                SizedBox(height:2,),
                Text(
                     books[0]["Info"],
                     style: TextStyle(
                       fontSize:12,
                       color: AhotColors.secondary2,
                     ),
                    ),
                 
              ],
            ),
                  
                Padding(
                        padding:const EdgeInsets.only(top:406,left:135),
                           child:
                           AnimatedButton(
                height: 32,
                width: 110,
                text: 'Read',
                isReverse: true,
                textStyle:const TextStyle(color: Colors.white, fontSize:10),
                selectedTextColor:Colors.white,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                backgroundColor:Colors.black.withOpacity(0.9),
                borderColor:Colors.black.withOpacity(0.9),
                selectedBackgroundColor:Colors.black.withOpacity(0.9),
                borderRadius:16,
                borderWidth: 2,
                onPress: () {
                  Navigator.of(context)
                       .push(MaterialPageRoute(builder: (context) =>screen3(index1:0,)));      
                   
                },
              ),
                     
                      ),
                       Padding(
                        padding:const EdgeInsets.only(top:406,left:23),
                           child:AnimatedButton(
                height: 32,
                width: 110,
                text: 'Details',
                isReverse: true,
                textStyle:const TextStyle(color: AhotColors.primary1, fontSize:10),
                selectedTextColor:AhotColors.primary2,
                selectedBackgroundColor:AhotColors.primary1,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                backgroundColor:AhotColors.primary2,
                borderColor:AhotColors.primary2,
                borderRadius:16,
                borderWidth: 2,
                onPress: () {},
              ),
                     
                      ),
                      ],
                 ),
           
             Stack(
                   children: [
                      Padding(
                        padding: const EdgeInsets.only(top:220,left: 20,right: 20),
                        child:
            Container(
            width:230 ,
            height:230 ,
            child:Card(
            color: AhotColors.primary2,
            shadowColor: Colors.grey[300],
            clipBehavior: Clip.antiAlias,
            elevation:6,
            shape: 
                RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
            ),
          ),
          ),
           Row(
                 children: [
                   Padding(
               padding: EdgeInsets.only(left:55,top:195 ),
               child:Container(
                    width:100 ,
                    height:140 ,
                    child:Card(
                      elevation: 10,
                     shadowColor: AhotColors.secondary2,
                      child:Image.asset(books[1]["image"],fit: BoxFit.fill,),
                    ),
                    ),
                   ),
                    SizedBox(width:18,),
                      Padding(
               padding: EdgeInsets.only(top:140 ),
               child:Container(
                            width:70,
                            height:50,
                         child: LayoutBuilder(
                  builder: (c, data) {
                    final crossAxisCount = data.maxWidth ~/ 160.0 +1;
                    return GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount),
                      children: <Widget>[
                        LikeButton(
                            size: 20,
                            likeCount: likeCount,
                            countBuilder: (int? count, bool isLiked, String text) {
                              var color = isLiked ? Colors.pinkAccent : Colors.grey;
                              Widget result;
                              if (count == 0) {
                                result = Text(
                                  "love",
                                  style: TextStyle(color: color,fontSize:16),
                                );
                              } else {
                                result = Text(
                                  count! >= 1000
                                      ? (count / 1000.0).toStringAsFixed(1) + "k"
                                      : text,
                                  style: TextStyle(color: color,fontSize: 12),
                                );
                              }
                              return result;
                            },
                            likeCountAnimationType: likeCount < 1000
                                ? LikeCountAnimationType.part
                                : LikeCountAnimationType.none,
                            likeCountPadding: const EdgeInsets.only(left: 5),
                            onTap: onLikeButtonTapped,
                        ),
                     ],
                    );
                  },
              ),
        
                     ),
           ),
                 ],
               ), 
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left:50,top:350 ),
                    child: Text(
                     books[1]["name"],
                     style: TextStyle(
                       fontSize:12,
                     ),
                    ),
                ),
                SizedBox(height:2,),
                Text(
                     books[1]["Info"],
                     style: TextStyle(
                       fontSize:12,
                       color: AhotColors.secondary2,
                     ),
                    ),
                 
              ],
            ),    
                
                      Padding(
                        padding:const EdgeInsets.only(top:406,left:135),
                           child:AnimatedButton(
                height: 32,
                width: 110,
                text: 'Read',
                isReverse: true,
                textStyle:const TextStyle(color: Colors.white, fontSize:10),
                selectedTextColor:Colors.white,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                backgroundColor:Colors.black.withOpacity(0.9),
                borderColor:Colors.black.withOpacity(0.9),
                selectedBackgroundColor:Colors.black.withOpacity(0.9),
                borderRadius:16,
                borderWidth: 2,
                onPress: () {
                  Navigator.of(context)
                       .push(MaterialPageRoute(builder: (context) =>screen3(index1:1,)));      
                   
                },
              ),
                     
                      ),
                       Padding(
                        padding:const EdgeInsets.only(top:406,left:23),
                           child:AnimatedButton(
                height: 32,
                width: 110,
                text: 'Details',
                isReverse: true,
                textStyle:const TextStyle(color: AhotColors.primary1, fontSize:10),
                selectedTextColor:AhotColors.primary2,
                selectedBackgroundColor:AhotColors.primary1,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                backgroundColor:AhotColors.primary2,
                borderColor:AhotColors.primary2,
                borderRadius:16,
                borderWidth: 2,
                onPress: () {},
              ),
                     
                      ),
                     ],
                 ),
           
                ],
            ),
            ),

                 ]
                   ),
      SizedBox(height:30,),
      Padding(
        padding: const EdgeInsets.only(left: 23),
        child: Text('Best of the day',style: TextStyle(fontSize: 20),),
      ),    
      SizedBox(height:5,),      
      Padding(
               padding: EdgeInsets.only(top:0),
               child: Row(
                children: [
                Stack(
                   children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child:
            Container(
            width:320 ,
            height:220 ,
            child:Card(
            color: AhotColors.primary2,
            shadowColor: Colors.grey[300],
            clipBehavior: Clip.antiAlias,
            elevation:6,
            shape: 
                RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
            ),
          ),
          ),
           Padding(
               padding: const EdgeInsets.only(left:50,top:0 ),
               child: Row(
                 children: [
                    Padding(
                      padding: const EdgeInsets.only(top:10 ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                             books[2]["name1"],
                              style: TextStyle(
                               fontSize:6,
                               color: AhotColors.secondary2
                              ),
                            ),
                          SizedBox(height:15.0,),
                          Text(
                             books[2]["name"],
                              style: TextStyle(
                               fontSize:10,
                               color: AhotColors.primary1
                              ),
                            ),
                          SizedBox(height:5.0,),
                          Text(
                             books[2]["Info"],
                              style: TextStyle(
                               fontSize:10,
                               color: AhotColors.secondary2,
                              ),
                            ),
                  
                        ],
                      ),
                    ),
                    SizedBox(width:7.0 ,),
                   Container(
                    // width:120 ,
                    // height:170 ,
                     width:115 ,
                    height:160 ,
                    child:Card(
                      elevation: 10,
                     shadowColor: AhotColors.secondary2,
                      child:Image.asset(books[2]["image"],fit: BoxFit.fill,),
                    ),
                    ),
                 
                 ],
               ),
           ), 
                Column(
                       children: [
                         Padding(
               padding: EdgeInsets.only(top:120,left:30,),
               child:Container(
                            width:70,
                            height:50,
                         child: LayoutBuilder(
                  builder: (c, data) {
                    final crossAxisCount = data.maxWidth ~/ 160.0 +1;
                    return GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount),
                      children: <Widget>[
                        LikeButton(
                            size: 20,
                            likeCount: likeCount,
                            countBuilder: (int? count, bool isLiked, String text) {
                              var color = isLiked ? Colors.pinkAccent : Colors.grey;
                              Widget result;
                              if (count == 0) {
                                result = Text(
                                  "love",
                                  style: TextStyle(color: color,fontSize:16),
                                );
                              } else {
                                result = Text(
                                  count! >= 1000
                                      ? (count / 1000.0).toStringAsFixed(1) + "k"
                                      : text,
                                  style: TextStyle(color: color,fontSize: 12),
                                );
                              }
                              return result;
                            },
                            likeCountAnimationType: likeCount < 1000
                                ? LikeCountAnimationType.part
                                : LikeCountAnimationType.none,
                            likeCountPadding: const EdgeInsets.only(left: 5),
                            onTap: onLikeButtonTapped,
                        ),
                     ],
                    );
                  },
              ),
        
                     ),
           ),
                  SizedBox(height:20.0,),
                         Padding(
                           padding: const EdgeInsets.only(top:0,left:40,),
                           child: Text(
                            books[2]["Info2"],
                            style: TextStyle(
                               fontSize:6,
                               color: AhotColors.secondary2
                              ),
                            ),
                         ),
                       ],
                     ),
                       Padding(
                        padding:const EdgeInsets.only(top:195,left:210),
                           child:AnimatedButton(
                height: 32,
                width: 110,
                text: 'Read',
                isReverse: true,
                textStyle:const TextStyle(color: Colors.white, fontSize:10),
                selectedTextColor:Colors.white,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                backgroundColor:Colors.black.withOpacity(0.9),
                borderColor:Colors.black.withOpacity(0.9),
                selectedBackgroundColor:Colors.black.withOpacity(0.9),
                borderRadius:16,
                borderWidth: 2,
                onPress: () {
                  Navigator.of(context)
                       .push(MaterialPageRoute(builder: (context) =>screen3(index1:2,)));      
                   
                },
              ),
                     
                      ),
                      
    ],
                ),
                ]
               ),
                 ),
      SizedBox(height:30,),
      Padding(
        padding: const EdgeInsets.only(left: 23),
        child: Text('Continue reading',style: TextStyle(fontSize: 20),),
      ),    
      Row(
                children: [
                Stack(
                   children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                        child:
           InkWell(
              onTap:(){
                  Navigator.of(context)
                       .push(MaterialPageRoute(builder: (context) =>screen3(index1:0,)));      
              },
              child: Container(
            width:320 ,
            height:90,
            child: Card(
              color: AhotColors.primary2,
              shadowColor: Colors.grey[300],
              clipBehavior: Clip.antiAlias,
              elevation:6,
              shape: 
                  RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
              ),
            ),
          ),
          ),
           Padding(
               padding: const EdgeInsets.only(left:50,top:0 ),
               child: Row(
                 children: [
                    Padding(
                      padding: const EdgeInsets.only(top:20 ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                             books[0]["name"],
                              style: TextStyle(
                               fontSize:10,
                               color: AhotColors.primary1
                              ),
                            ),
                          SizedBox(height:5.0,),
                          Text(
                             books[2]["Info"],
                              style: TextStyle(
                               fontSize:10,
                               color: AhotColors.secondary2,
                              ),
                            ),
                          SizedBox(height:5.0,),
                          Padding(
                            padding:EdgeInsets.only(left:130),
                            child:Text(
                             'Chapter 7 of 10',
                              style: TextStyle(
                               fontSize:8,
                               color: AhotColors.secondary2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                   // SizedBox(width:90.0 ,),
                   Padding(
                     padding: const EdgeInsets.only(top:20 ,left:5),
                     child: Container(
                      width:50 ,
                      height:60 ,
                      child:Card(
                        elevation: 10,
                       shadowColor: AhotColors.secondary2,
                        child:Image.asset('assets/images/image4.jpeg',fit: BoxFit.fill,),
                      ),
                      ),
                   ),
                 
                 ],
               ),
           ), 
               Padding(
                padding: const EdgeInsets.only(top:70,left: 5 ),
               child: 
               Slider(
                           value:55520, 
                           max:55520,
                           min:7,
                           activeColor:AhotColors.secondary5,
                           inactiveColor:Colors.grey[300],
                           thumbColor:AhotColors.secondary5,
                           onChanged: (value){
                               print(value);
                            
                           },
                         ),
            
  
                   ),
  ],
                ),
                ]
               ), 
    ]
  );       


class screen5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    var height = screensize.height;
    var width =screensize.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width:width,
            height: 350,
            color: AhotColors.secondary5.withOpacity(0.5),
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: Container(
                
                child:CircleAvatar(
                     backgroundImage:Image.asset('assets/images/image9.jpg',).image,
                      radius: 50.0,
                      backgroundColor: Colors.white,
                     ),
              ),
                    
                      ),
            ),
           
            Padding(
              padding: const EdgeInsets.only(top: 290,left: 100),
              child: Text("Aya Alsaity",
              style: TextStyle(fontSize: 27),),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 345),
              child:Container(
                width: width,
                height: 80, 
                child: Card(
                  color: AhotColors.primary2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:230),
                        child: Row(
                          children: [
                            Icon(Icons.mobile_friendly,size: 16,color: AhotColors.secondary2,),
                            SizedBox(width: 5,),
                            Text("092111111   ",
              style: TextStyle(fontSize:12),),
                          ],
                        ),
                      ),
                    ],
                  ) ,
                ),
              ),
            ),
              Padding(
              padding: const EdgeInsets.only(top: 410),
              child:Container(
                width: width,
                height: 80, 
                child: Card(
                  color: AhotColors.primary2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:130),
                        child: Row(
                          children: [
                            Icon(Icons.email,size: 16,color: AhotColors.secondary2,),
                            SizedBox(width: 5,),
                            Text("alsaityaya94@gmail.com",
              style: TextStyle(fontSize:12),),
                          ],
                        ),
                      ),
                    ],
                  ) ,
                ),
              ),
            ),
         
         ],
      ),
    );
  }
}


























/// Item in drawer
class HomeDrawer extends StatefulWidget {
  const HomeDrawer(
      {Key? key,
      required this.screenIndex,
      required this.iconAnimationController,
      required this.callBackIndex})
      : super(key: key);

  final AnimationController iconAnimationController;
  final DrawerIndex screenIndex;
  final Function(DrawerIndex) callBackIndex;

  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  List<DrawerList> drawerList = [];

  @override
  void initState() {
    setdDrawerListArray();
    super.initState();
  }

  /// Inilize Items list in drawer

  void setdDrawerListArray() {
    drawerList = <DrawerList>[
      DrawerList(
        index: DrawerIndex.HOME,
        labelName: 'Home',
        icon: const Icon(Icons.home),
      ),
      DrawerList(
        index: DrawerIndex.Profile,
        labelName: 'Profile',
        icon: const Icon(Icons.person),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.5),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  /// ---------------------------
                  /// Animated Builder for drawer
                  /// ---------------------------

                  AnimatedBuilder(
                    animation: widget.iconAnimationController,
                    builder: (BuildContext context, Widget? child) {
                      return ScaleTransition(
                        
                        scale: AlwaysStoppedAnimation<double>(
                            1.0 - (widget.iconAnimationController.value) * 0.2),
                        child: RotationTransition(
                          turns: AlwaysStoppedAnimation<double>(Tween<double>(
                                      begin: 0.0, end: 24.0)
                                  .animate(CurvedAnimation(
                                      parent: widget.iconAnimationController,
                                      curve: Curves.fastOutSlowIn))
                                  .value /
                              360),
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.white.withOpacity(0.6),
                                    offset: const Offset(2.0, 4.0),
                                    blurRadius: 8),
                              ],
                            ),
                            child: const ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60.0)),
                              child: Image(
                                image: AssetImage("assets/images/image9.jpg"),fit: BoxFit.fill,//Aya fghggh
                              ),
                            ),
                          ),//Aya fghggh
                        ),
                      );
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 4),
                    child: Text(
                      'Aya Alsaity',//Aya fghggh
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],//Aya fghggh
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Divider(
            height: 1,
            color: Colors.white.withOpacity(0.6),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(0.0),
              itemCount: drawerList.length,
              itemBuilder: (BuildContext context, int index) {
                return inkwell(drawerList[index]);
              },
            ),
          ),
          Divider(
            height: 1,
            color: Colors.white.withOpacity(0.6),
          ),
          Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  'Log In',
                  style: TextStyle(
                    fontFamily: 'Bahij Janna',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.purple.withOpacity(0.6),
                  ),
                  textAlign: TextAlign.left,
                ),
                trailing: const Icon(
                  Icons.login,
                  color: Colors.red,
                ),
                onTap: () {
                      Navigator.of(context)
                       .push(MaterialPageRoute(builder: (context) =>Login()));      
                  
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom,
              )
            ],
          ),
        ],
      ),
    
    
      );
  }

  Widget inkwell(DrawerList listData) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.grey.withOpacity(0.1),
        highlightColor: Colors.transparent,
        onTap: () {
          navigationtoScreen(listData.index);
        },
        child: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 6.0,
                    height: 46.0,
                    decoration: BoxDecoration(
                      color: widget.screenIndex == listData.index
                          ? Colors.blue
                          : Colors.transparent,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                  ),
                  listData.isAssetsImage!
                      ? SizedBox(
                          width: 24,
                          height: 24,
                          child: Image.asset(
                            listData.imageName,
                            color: widget.screenIndex == listData.index
                                ? Colors.blue
                                : Colors.purple.withOpacity(0.6),
                          ),
                        )
                      : Icon(
                          listData.icon.icon,
                          color: widget.screenIndex == listData.index
                              ? Colors.blue
                              : Colors.transparent.withOpacity(0.6),
                        ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                  ),
                  Text(
                    listData.labelName,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: widget.screenIndex == listData.index
                          ? Colors.blue
                          : Colors.transparent.withOpacity(0.6),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            widget.screenIndex == listData.index
                ? AnimatedBuilder(
                    animation: widget.iconAnimationController,
                    builder: (BuildContext context, Widget? child) {
                      return Transform(
                        transform: Matrix4.translationValues(
                            (MediaQuery.of(context).size.width * 0.75 - 64) *
                                (1.0 -
                                    widget.iconAnimationController.value -
                                    1.0),
                            0.0,
                            0.0),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Container(
                            width:
                                MediaQuery.of(context).size.width * 0.75 - 64,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.2),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(28),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(28),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }

  Future<void> navigationtoScreen(DrawerIndex indexScreen) async {
    widget.callBackIndex(indexScreen);
  }
}

enum DrawerIndex {
  // ignore: constant_identifier_names
  HOME,
  // ignore: constant_identifier_names
  Profile,
 
  // ignore: constant_identifier_names
  About,
}

class DrawerList {
  DrawerList({
    this.isAssetsImage = false,
    this.labelName = '',
    required this.icon,
    required this.index,
    this.imageName = '',
  });

  String labelName;
  Icon icon;
  bool? isAssetsImage;
  String imageName;
  DrawerIndex index;
}

class DrawerUserController extends StatefulWidget {
  const DrawerUserController({
    Key? key,
    this.drawerWidth = 250,
    required this.onDrawerCall,
    this.screenView,
    required this.animationController,
    this.animatedIconData = AnimatedIcons.arrow_menu,
    this.menuView,
    this.drawerIsOpen,
    required this.screenIndex,
  }) : super(key: key);

  final double drawerWidth;
  final Function(DrawerIndex) onDrawerCall;
  final Widget? screenView;
  final Function(AnimationController) animationController;
  final Function(bool)? drawerIsOpen;
  final AnimatedIconData animatedIconData;
  final Widget? menuView;
  final DrawerIndex screenIndex;

  @override
  _DrawerUserControllerState createState() => _DrawerUserControllerState();
}

class _DrawerUserControllerState extends State<DrawerUserController>
    with TickerProviderStateMixin {
  late ScrollController scrollController;
  late AnimationController iconAnimationController;
  late AnimationController animationController;

  double scrolloffset = 0.0;
  bool isSetDawer = false;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);

    iconAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 0));

    iconAnimationController.animateTo(1.0,
        duration: const Duration(milliseconds: 0), curve: Curves.fastOutSlowIn);

    scrollController =
        ScrollController(initialScrollOffset: widget.drawerWidth);

    scrollController
      .addListener(() {
        if (scrollController.offset <= 0) {
          if (scrolloffset != 1.0) {
            setState(() {
              scrolloffset = 1.0;
              try {
                widget.drawerIsOpen!(true);
              } catch (_) {}
            });
          }

          iconAnimationController.animateTo(0.0,
              duration: const Duration(milliseconds: 0), curve: Curves.linear);
        } else if (scrollController.offset > 0 &&
            scrollController.offset < widget.drawerWidth) {
          iconAnimationController.animateTo(
              (scrollController.offset * 100 / (widget.drawerWidth)) / 100,
              duration: const Duration(milliseconds: 0),
              curve: Curves.linear);
        } else if (scrollController.offset <= widget.drawerWidth) {
          if (scrolloffset != 0.0) {
            setState(() {
              scrolloffset = 0.0;
              try {
                widget.drawerIsOpen!(false);
              } catch (_) {}
            });
          }

          iconAnimationController.animateTo(1.0,
              duration: const Duration(milliseconds: 0), curve: Curves.linear);
        }
      });

    getInitState();

    super.initState();
  }

  Future<bool> getInitState() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 300));
    try {
      widget.animationController(iconAnimationController);
    } catch (_) {}

    await Future<dynamic>.delayed(const Duration(milliseconds: 100));
    scrollController.jumpTo(
      widget.drawerWidth,
    );

    setState(() {
      isSetDawer = true;
    });
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        physics: const PageScrollPhysics(parent: ClampingScrollPhysics()),
        child: Opacity(
          opacity: isSetDawer ? 1 : 0,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width + widget.drawerWidth,
            child: Container(
              color:AhotColors.secondary5.withOpacity(0.7),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: widget.drawerWidth,
                    height: MediaQuery.of(context).size.height,
                    child: AnimatedBuilder(
                      animation: iconAnimationController,
                      builder: (BuildContext context, Widget? child) {
                        return Transform(
                          transform: Matrix4.translationValues(
                              scrollController.offset, 0.0, 0.0),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            width: widget.drawerWidth,
                            child: HomeDrawer(
                              screenIndex: widget.screenIndex,
                              iconAnimationController: iconAnimationController,
                              callBackIndex: (DrawerIndex indexType) {
                                onDrawerClick();
                                try {
                                  widget.onDrawerCall(indexType);
                                // ignore: empty_catches
                                } catch (e) {}
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.indigo.withOpacity(0.2),
                              blurRadius: 24),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          IgnorePointer(
                            ignoring: scrolloffset == 1 || false,
                            child: widget.screenView ?? Container(
                                    color: Colors.white,
                                  ),
                          ),
                          scrolloffset == 1.0
                              ? InkWell(
                                  onTap: () {
                                    onDrawerClick();
                                  },
                                )
                              : const SizedBox(),
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).padding.top + 8,
                                left: 8),
                            child: SizedBox(
                              width: AppBar().preferredSize.height - 8,
                              height: AppBar().preferredSize.height - 8,
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(
                                      AppBar().preferredSize.height),
                                  child: Center(
                                    child: widget.menuView ?? AnimatedIcon(
                                            icon: widget.animatedIconData,
                                            progress:
                                                iconAnimationController),
                                  ),
                                  onTap: () {
                                    FocusScope.of(context)
                                        .requestFocus(FocusNode());
                                    onDrawerClick();
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onDrawerClick() {
    if (scrollController.offset != 0.0) {
      scrollController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 400),
        curve: Curves.fastOutSlowIn,
      );
    } else {
      scrollController.animateTo(
        widget.drawerWidth,
        duration: const Duration(milliseconds: 400),
        curve: Curves.fastOutSlowIn,
      );
    }
  }
}
