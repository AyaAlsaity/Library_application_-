import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/screen/screen4.dart';
import '../../setting/colors.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../data/Data.dart';

class screen3 extends StatefulWidget {
  final int index1;
  const screen3({Key? key, required this.index1}) : super(key: key);

  @override
  _screen3 createState() => _screen3(index1);
}

class _screen3 extends State<screen3> {
  final int index1;

  _screen3(this.index1);
 
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    var height = screensize.height;
    var width =screensize.width;
    final int likeCount =999;
    
    return Scaffold(
      body:           
        ListView.separated(
          itemBuilder:(context , index) => buldbody(index,context,width,height,likeCount,index1),
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

Widget buldbody(int index,context,width,height,likeCount,int index1) =>
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
           Row(
                 children: [
                   Padding(
               padding: EdgeInsets.only(left:220,top:50 ),
               child:Container(
                    width:120 ,
                    height:155 ,
                    child:Card(
                      elevation: 10,
                     shadowColor: AhotColors.secondary2,
                      child:Image.asset(books[index1]["image"],fit: BoxFit.fill,),
                    ),
                    ),
                   ),
                 
                 ],
               ), 
           
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left:30,top:80 ),
                        child: Text(
                         books[index1]["name"],
                         style: TextStyle(
                           fontSize:16,
                         ),
                        ),
                    ),
                    SizedBox(height:7,),
                    Padding(
                      padding: EdgeInsets.only(left:30,),
                      child: Text(
                            books[index1]["Info2"],
                           style: TextStyle(
                             fontSize:10,
                             color: AhotColors.secondary2,
                           ),
                          ),
                    ),
                  ],
                
                ),
                
                
                  
                 Column(
                children: [
               Stack(
                   children: [
                      Padding(
                        padding: const EdgeInsets.only(top:230,left: 20,right: 20),
                        child:
            Container(
            width:330 ,
            height:70 ,
            child:  InkWell(
                         onTap: (){
                      Navigator.of(context)
                       .push(MaterialPageRoute(builder: (context) =>screen4()));      
                         },
                         child:Card(
            color: AhotColors.primary2,
            shadowColor: Colors.grey[300],
            clipBehavior: Clip.antiAlias,
            elevation:2,
            shape: 
                RoundedRectangleBorder(borderRadius:BorderRadius.circular(45)),
            ),
          ),),
          ),
                       Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                          padding: EdgeInsets.only(left:55,top:247 ),
                          child: Text(
                           "Chapter "+books[index1]["chapter1"][0][ "number"]+" "+books[index1]["chapter1"][1][ "name"],
                           style: TextStyle(
                             fontSize:12,
                           ),
                          ),
                    ),
                    SizedBox(height:5,),
                    Padding(
                      padding: EdgeInsets.only(left:55,),
                      child: Text(
                             books[index1]["chapter1"][2][ "Info"],
                              style: TextStyle(
                               fontSize:10,
                               color: AhotColors.secondary2,
                             ),
                            ),
                    ),
                  ],
                
                ),
                      
                       Padding(
               padding: EdgeInsets.only(left:270,top:230  ),
               child:Container(
                            width:70,
                            height:50,
                            // color: Colors.red,
                         child: LayoutBuilder(
                  builder: (c, data) {
                    final crossAxisCount = data.maxWidth ~/ 160.0 +1;
                    return GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount),
                      children: <Widget>[
                        
                       LikeButton(
                        size:27,
                        circleColor: CircleColor(
                            start: Colors.pinkAccent.shade200,
                            end: Colors.pinkAccent.shade400),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.lightBlue.shade300,
                          dotSecondaryColor: Colors.lightBlue.shade200,
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(Icons.insert_emoticon,
                            color:
                                isLiked ? Colors.lightBlueAccent : Colors.grey,
                            size:27,
                          );
                        },
                      ),
                      ],
                    );
                  },
              ),
        
                     ),
           ),
               ],
                 ),
                 
                 SizedBox(height: 3.0,),
                 InkWell(
                         onTap: (){
                           
                      Navigator.of(context)
                       .push(MaterialPageRoute(builder: (context) =>screen4()));      
                         },
                         child:Stack(
                   children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child:
            Container(
            width:330 ,
            height:70 ,
            child:Card(
            color: AhotColors.primary2,
            shadowColor: Colors.grey[300],
            clipBehavior: Clip.antiAlias,
            elevation:2,
            shape: 
                RoundedRectangleBorder(borderRadius:BorderRadius.circular(45)),
            ),
          ),
          ),
                       Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 20,left:55 ),
                        child: Text(
                        "Chapter "+books[index1]["chapter2"][0][ "number"]+" "+books[index1]["chapter2"][1][ "name"],
                         style: TextStyle(
                           fontSize:12,
                         ),
                        ),
                    ),
                    SizedBox(height:5,),
                    Padding(
                      padding: EdgeInsets.only(left:55,),
                      child: Text(
                           books[index1]["chapter2"][2][ "Info"],
                            style: TextStyle(
                             fontSize:10,
                             color: AhotColors.secondary2,
                           ),
                          ),
                    ),
                  ],
                
                ),
                       Padding(
               padding: EdgeInsets.only(left:270),
               child:Container(
                            width:70,
                            height:50,
                            // color: Colors.red,
                         child: LayoutBuilder(
                  builder: (c, data) {
                    final crossAxisCount = data.maxWidth ~/ 160.0 +1;
                    return GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount),
                      children: <Widget>[
                       LikeButton(
                        size:27,
                        circleColor: CircleColor(
                            start: Colors.pinkAccent.shade200,
                            end: Colors.pinkAccent.shade400),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.lightBlue.shade300,
                          dotSecondaryColor: Colors.lightBlue.shade200,
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(Icons.insert_emoticon,
                            color:
                                isLiked ? Colors.lightBlueAccent : Colors.grey,
                            size:27,
                          );
                        },
                      ),
                      ],
                    );
                  },
              ),
        
                     ),
           ),
               ],
                 ),
                 ),
                SizedBox(height: 3.0,),
                 InkWell(
                         onTap: (){
                          
                      Navigator.of(context)
                       .push(MaterialPageRoute(builder: (context) =>screen4()));      
                         },
                         child:Stack(
                   children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child:
            Container(
            width:330 ,
            height:70 ,
            child:Card(
            color: AhotColors.primary2,
            shadowColor: Colors.grey[300],
            clipBehavior: Clip.antiAlias,
            elevation:2,
            shape: 
                RoundedRectangleBorder(borderRadius:BorderRadius.circular(45)),
            ),
          ),
          ),
                       Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 20,left:55 ),
                        child: Text(
                         "Chapter "+books[index1]["chapter3"][0][ "number"]+" "+books[index1]["chapter3"][1][ "name"],
                         style: TextStyle(
                           fontSize:12,
                         ),
                        ),
                    ),
                    SizedBox(height:5,),
                    Padding(
                      padding: EdgeInsets.only(left:55,),
                      child: Text(
                           books[index1]["chapter3"][2][ "Info"],
                            style: TextStyle(
                             fontSize:10,
                             color: AhotColors.secondary2,
                           ),
                          ),
                    ),
                  ],
                
                ),
                       Padding(
               padding: EdgeInsets.only(left:270),
               child:Container(
                            width:70,
                            height:50,
                            // color: Colors.red,
                         child: LayoutBuilder(
                  builder: (c, data) {
                    final crossAxisCount = data.maxWidth ~/ 160.0 +1;
                    return GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount),
                      children: <Widget>[
                       LikeButton(
                        size:27,
                        circleColor: CircleColor(
                            start: Colors.pinkAccent.shade200,
                            end: Colors.pinkAccent.shade400),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.lightBlue.shade300,
                          dotSecondaryColor: Colors.lightBlue.shade200,
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(Icons.insert_emoticon,
                            color:
                                isLiked ? Colors.lightBlueAccent : Colors.grey,
                            size:27,
                          );
                        },
                      ),
                      ],
                    );
                  },
              ),
        
                     ),
           ),
               ],
                 ),
                 ),
                SizedBox(height: 3.0,),
                  InkWell(
                         onTap: (){
                         
                      Navigator.of(context)
                       .push(MaterialPageRoute(builder: (context) =>screen4()));      
                         },
                         child:Stack(
                   children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child:
            Container(
            width:330 ,
            height:70 ,
            child:Card(
            color: AhotColors.primary2,
            shadowColor: Colors.grey[300],
            clipBehavior: Clip.antiAlias,
            elevation:2,
            shape: 
                RoundedRectangleBorder(borderRadius:BorderRadius.circular(45)),
            ),
          ),
          ),
                       Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 20,left:55 ),
                        child: Text(
                         "Chapter "+books[index1]["chapter4"][0][ "number"]+" "+books[index1]["chapter4"][1][ "name"],
                         style: TextStyle(
                           fontSize:12,
                         ),
                        ),
                    ),
                    SizedBox(height:5,),
                    Padding(
                      padding: EdgeInsets.only(left:55,),
                      child: Text(
                           books[index1]["chapter4"][2][ "Info"],
                            style: TextStyle(
                             fontSize:10,
                             color: AhotColors.secondary2,
                           ),
                          ),
                    ),
                  ],
                
                ),
                       Padding(
               padding: EdgeInsets.only(left:270),
               child:Container(
                            width:70,
                            height:50,
                            // color: Colors.red,
                         child: LayoutBuilder(
                  builder: (c, data) {
                    final crossAxisCount = data.maxWidth ~/ 160.0 +1;
                    return GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount),
                      children: <Widget>[
                       LikeButton(
                        size:27,
                        circleColor: CircleColor(
                            start: Colors.pinkAccent.shade200,
                            end: Colors.pinkAccent.shade400),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.lightBlue.shade300,
                          dotSecondaryColor: Colors.lightBlue.shade200,
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(Icons.insert_emoticon,
                            color:
                                isLiked ? Colors.lightBlueAccent : Colors.grey,
                            size:27,
                          );
                        },
                      ),
                      ],
                    );
                  },
              ),
        
                     ),
           ),
               ],
                 ),
                 ),
               ],
            ),      
         

                 ]
                   ),
                 
       SizedBox(height:30,),
      Padding(
        padding: EdgeInsets.only(left:30),
        child: Text('You might also like...',style: TextStyle(fontSize:16),),
      ),    
      SizedBox(height:0,),      
      Stack(
                     children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child:
              Container(
              width:320 ,
              height:200 ,
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
                 padding: EdgeInsets.only(left:60),
                 child: Row(
                   children: [
                     Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
              
                      SizedBox(width:20.0 ,),
                      Container(
                        padding: EdgeInsets.only(top:40),
                         width:110 ,
                        height:190 ,
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
                 padding: EdgeInsets.only(top:110,left:30,),
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
                    SizedBox(height:5.0,),
                           Padding(
                             padding: const EdgeInsets.only(top:0,left:40,),
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
                         
                        
    ],
                  ),

      ]
  );
           