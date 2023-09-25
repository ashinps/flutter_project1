
import 'package:flutter/material.dart';

import 'package:flutter_project1/travel/screens/welcome_page/welcome_page.dart';

import 'package:flutter_project1/travel/utils/theme_provider.dart';
import 'package:provider/provider.dart';

main() async {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_)=> ThemeProvider())],
      child: const MyApp(),)

     );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
          return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Provider.of<ThemeProvider>(context).themeData,
          home:const WelcomePage(),
        );
    }
}
