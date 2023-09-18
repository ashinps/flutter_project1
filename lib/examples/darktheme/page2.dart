import 'package:flutter/material.dart';


import 'package:provider/provider.dart';

import 'package:flutter_project1/travel/utils/theme_provider.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  @override
  Widget build(BuildContext context) {
  return Consumer<ThemeProvider>(
  builder: (context, ThemeProvider, child) {
  // Access the themeProvider here to toggle themes
  return Scaffold(
  appBar: AppBar(
  title: Text('Settings'),
  ),
  body: Center(
  child: Switch(
  value: ThemeProvider.isDark, // Assuming isDark is a property of ThemeProvider
  onChanged: (value) {
  ThemeProvider.toggleTheme(); // Implement your theme toggle logic
  },
  ),
  ),
  );
  },
  );
  }
  }

