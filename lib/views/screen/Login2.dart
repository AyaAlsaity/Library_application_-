
import 'package:flutter/material.dart';
import '../../shared/component/component.dart';


class Login2 extends StatefulWidget {
  @override
  _Login2 createState() => _Login2();
}

class _Login2 extends State<Login2> {
  var nameController=TextEditingController();
  var phoneController=TextEditingController();
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
               Controller:nameController,
               prefix: Icons.face,
               type: TextInputType.name,
               validate: (Value){
                  if(Value!.isEmpty){
                    return'name must not be empty';
                  }
                  return null;
               }, label: 'Name',
             ),
              SizedBox(
                height: 10.0,
              ),
              defaultFormField(
               Controller:phoneController,
               prefix: Icons.mobile_friendly_outlined,
               type: TextInputType.phone,
               validate: (Value){
                  if(Value!.isEmpty){
                    return'phone must not be empty';
                  }
                  return null;
               }, label: 'Phone',
             ),
              SizedBox(
                height: 10.0,
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
               text:'Login',
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
