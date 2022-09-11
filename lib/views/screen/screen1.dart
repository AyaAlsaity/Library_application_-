// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_3/shared/component/component.dart';
// import 'package:flutter_application_3/views/dashboard/DashboardTabs.dart';
// import 'package:flutter_application_3/views/screen/screen2.dart';
// import '../../setting/colors.dart';

// class screen11 extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
    // var screensize = MediaQuery.of(context).size;
    // var height = screensize.height;
    // var width =screensize.width;
//     return Scaffold(
//       body: Stack(
//         children: [
//           Image.asset('assets/images/image1.jpeg',height: height,width: width,fit: BoxFit.fill,),
//           Padding(
//             padding: const EdgeInsets.only(bottom:85),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [

//                 Center(
//                   child: Text(
//                     'flamingo.',
//                     style: TextStyle(color:AhotColors.primary1,fontSize: 30.0 ,fontWeight: FontWeight.w500),
//                   ),
//                 ),
//                 SizedBox(height: 20.0,),
//                 Center(
//                  child:TextButton(
//                     style: ButtonStyle(
//                       foregroundColor: MaterialStateProperty.all<Color>(AhotColors.primary1),
//                       backgroundColor:MaterialStateProperty.all<Color>(AhotColors.primary2),
//                       shadowColor:MaterialStateProperty.all<Color>(AhotColors.secondary2),
//                       elevation:MaterialStateProperty.all<double>(1),
//                       overlayColor:MaterialStateProperty.all<Color>(AhotColors.secondary4.withOpacity(0.2)),
//                       shape:MaterialStateProperty.all<OutlinedBorder>( RoundedRectangleBorder(borderRadius:BorderRadius.circular(25)),) ,
//                       animationDuration:Duration(seconds:0),
//                       minimumSize:  MaterialStateProperty.all<Size>(Size(170, 50)),
//                     ),
                    // onPressed: () { 
                    //   Navigator.of(context)
                    //    .push(MaterialPageRoute(builder: (context) =>Drawer6()));      
                    // },
//                     child: Text(
//                      'start reading',
//                     ),
//                     clipBehavior:Clip.none,
//                   ) ,       
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../../shared/component/component.dart';
import '../screen/Login2.dart';
class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var formkey=GlobalKey<FormState>();
  bool ispasswordshow=true;

  @override
    Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    var height = screensize.height;
    var width =screensize.width;
    return Scaffold(
      body:Stack(
        children: [
           Image.asset('assets/images/image1.jpeg',height: height,width: width,fit: BoxFit.fill,),
          
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: SingleChildScrollView(
               key: formkey,
                child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Text(
                'flamingo.',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 20.0,
              ),
              
             defaultFormField(
               Controller:emailController,
               prefix: Icons.email,
               type: TextInputType.emailAddress,
               validate: (Value){
                  if(Value!.isEmpty){
                    return'email adderss must not be empty';
                  }
                  return null;
               }, label: 'emailAddress',
             ),
              SizedBox(
                height: 10.0,
              ),

              defaultFormField(
               Controller:passwordController,
               prefix: Icons.lock,
               suffix: ispasswordshow? Icons.visibility:Icons.visibility_off,
               ispassword: ispasswordshow,
               suffixPassword: (){
                 setState(() {
                   ispasswordshow=!ispasswordshow;
                 });
               },
               type: TextInputType.visiblePassword,
               validate: (String Value){
                  if(Value.isEmpty){
                    return'password is too short';
                  }
                  return null;
               }, label: 'password',
             ),
            
             SizedBox(
                height: 20.0,
              ),
             //البطمة
             defaultButton(
               text:'start reading',
               context: context,
               function: (){
                  if(formkey.currentState!.validate()){
                    print(emailController.text);
                    print(passwordController.text);
                  }
               },
             ),
             SizedBox(
                height: 10.0,
              ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Do\’t have an account?'),
                TextButton(
                  onPressed: (){
                     Navigator.of(context)
                       .push(MaterialPageRoute(builder: (context) =>Login2()));      
                   
                     
                  },
                   child:Text('Register Now'),
                   ),
              ],
            ),
            ], 
          ),
     
               ),
            ),
            ),
        ],
      ),
     
    );
  }
}



