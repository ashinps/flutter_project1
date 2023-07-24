import 'package:flutter/material.dart';

class Regstrpage extends StatefulWidget {
  const Regstrpage({Key? key}) : super(key: key);

  @override
  State<Regstrpage> createState() => _RegstrpageState();
}

class _RegstrpageState extends State<Regstrpage> {

  //variables
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var confirmPassController = TextEditingController();

  //boolean
  bool passEnable = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //Title
            const Text("Register", style: TextStyle(fontSize: 30),),


            //Registration Form
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [


                    //username field
                    TextFormField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        labelText: "Username",
                        border: OutlineInputBorder(),
                      ),
                    ),


                    const SizedBox(height: 20),


                    //email address field
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),


                    const SizedBox(height: 20),


                    //password field
                    TextFormField(
                      obscureText: !passEnable,
                      controller: passController,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passEnable = !passEnable;
                            });
                          },
                          icon: Icon(passEnable ? Icons.visibility:Icons.visibility_off)))),


                    const SizedBox(height: 20),


                    //Confirm password field
                    TextFormField(
                      obscureText: !passEnable,
                      controller: confirmPassController,
                      decoration: const InputDecoration(
                        labelText: "Confirm Password",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 20),

                    //Register button
                    ElevatedButton(onPressed:(){}, child: const Text('Register'),),

                    //Goto Login page
                    Align(alignment:Alignment.center,child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[const Text('Already have an account?'),
                        TextButton(onPressed: (){}, child: (const Text('Login')))])),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
