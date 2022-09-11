import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/dashboard/DashboardTabs.dart';
import '../../setting/colors.dart';

Widget defaultButton( {
   double width=double.infinity,
   Color backround=AhotColors.secondary3,
   bool isUpperCase=true,
   required Function function,
   required String text,
   context,
})=>  Container(
           width: width,
          child: MaterialButton(
           onPressed: () { 
                      Navigator.of(context)
                       .push(MaterialPageRoute(builder: (context) =>Drawer6()));      
                    },
           child: Text(
             isUpperCase? text.toUpperCase():text,
             style:TextStyle(
               color: Colors.white,
             ),
             ),
             ),
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(12.0),
            color: backround,
          ),
         );

Widget defaultFormField({
 required TextEditingController Controller,
 required TextInputType type,
 required Function validate,
 required String label,
 required IconData prefix,
 IconData? suffix,
 bool ispassword=false,
 Function? onSubmit,
 Function? onchanged,
 Function? suffixPassword,
})=>  TextFormField(
          controller:Controller,
            keyboardType: type,
            obscureText: ispassword,
            onFieldSubmitted:(value){
              onSubmit;
            }, 
            onChanged: (Value){
              onchanged;
            },
            validator: (Value){
              validate;
            },
           decoration: InputDecoration(
             labelText: label,
             prefixIcon: Icon(prefix),
             suffixIcon: suffix != null?IconButton(
               onPressed:(){suffixPassword;}, 
               icon:Icon(suffix,)):null,
             
             border:OutlineInputBorder(),
           ),
          );


  //  print(emailController.text);
  //             print(passwordController.text);
              // Navigator.of(context)
              // // يحول الصفحة هذي 
              // .pushReplacement(MaterialPageRoute(builder: (context) =>messenger()));
                