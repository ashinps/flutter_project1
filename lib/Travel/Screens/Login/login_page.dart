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

  @override
  Widget build(BuildContext context) {
    return Scaffold(    //Scaffold
      body: Center(
          child: (
              Column(
               mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image(image: AssetImage("assets/images/img_1.jpg")),
                   Text("TRIP EASE", style: TextStyle(fontSize: 50,fontFamily: 'ChelaOne'), ),

                   Form(
                     key: _formKey,
                     child: Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: Column(
                         children: [
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
                           SizedBox(height: 20),
                           TextFormField(
                             obscureText: true,
                             validator: (value) {
                               if (value == null || value.isEmpty) {
                                 return 'Please Enter Password';
                               }
                               return null;
                             },
                             controller: passController,
                             decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Password"),
                           )])
                     )
                   ),

           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Align(
               alignment: Alignment.centerRight,
               child: TextButton(onPressed: (){},child: Text("Forgot password?"),),
             ),
           ),

           Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
          alignment: Alignment.bottomRight,
          child: TextButton(onPressed: (){},child: Text("Register"),),
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
           },child: Text("Login"),
           ),
           ),
          ],
       )
       )
      )
    );
  }
}
