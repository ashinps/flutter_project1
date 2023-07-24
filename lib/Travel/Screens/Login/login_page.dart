import 'package:flutter/material.dart';


class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}


class _LoginpageState extends State<Loginpage> {

  //variables
  var emailController=TextEditingController();
  var passController=TextEditingController();
  var email="", password="";
  final _formKey = GlobalKey<FormState>();

  bool passEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(    //Scaffold
      body: ListView(
          children:[
            Center(
            child:
                 Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         const Image(image: AssetImage("assets/images/img_1.jpg"),
                           height: 200,width: 200,),

                         Form(
                           key: _formKey,
                           child: Padding(
                             padding: const EdgeInsets.all(20.0),
                             child: Column(
                               children: [

                                 //emailField
                               TextFormField(
                               controller: emailController,
                               decoration: const InputDecoration(
                                 border: OutlineInputBorder(),
                                 labelText: "Email"
                               ),
                               validator: (value) {
                                 if (value == null || value.isEmpty) {
                                   return 'Please Enter Email';
                                 }
                                 return null;
                               }
                             ),

                                 const SizedBox(height: 20),

                                 //passField
                                 TextFormField(
                                   obscureText: !passEnable,
                                   validator: (value) {
                                     if (value == null || value.isEmpty) {
                                       return 'Please Enter Password';
                                     }
                                     return null;
                                   },
                                   controller: passController,
                                   decoration: InputDecoration(
                                       border: const OutlineInputBorder(),
                                       labelText: "Password",
                                       suffixIcon: IconButton(
                                           onPressed: (){
                                            setState(() {
                                              passEnable = !passEnable;
                                         });
                                       },
                                      icon: Icon(passEnable ?
                                      Icons.visibility: Icons.visibility_off)))),
                               ]
                             )
                           )
                         ),

                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Align(
                     alignment: Alignment.centerRight,
                     child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children:[
                         TextButton(onPressed: (){},child: const Text("Forgot password?")),
                         TextButton(onPressed: (){},child: const Text("Register"),)],)
                   ),
                 ),

                 SizedBox(
                   height: 40, width: 200,
                   child: ElevatedButton(
                     onPressed: (){
                     setState(() {
                       if(_formKey.currentState!.validate()){
                         ScaffoldMessenger.of(context).showSnackBar(
                           const SnackBar(content: Text('Processing Data')),
                         );
                       }
                       print(emailController.text+passController.text);
                       email=emailController.text;
                       password=passController.text;
                     });
                 },child: const Text("Login"),
                 ),
                 ),
                ]
       )
              )
              ]
      )
    );
  }
}
