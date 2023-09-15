import 'package:flutter/material.dart';
import 'package:flutter_project1/travel/utils/theme.dart';

import 'package:provider/provider.dart';

import '../../Travel/utils/theme_provider.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  @override
  Widget build(BuildContext context) {
  return Consumer<ThemeProvider2>(
  builder: (context, ThemeProvider2, child) {
  // Access the themeProvider here to toggle themes
  return Scaffold(
  appBar: AppBar(
  title: Text('Settings'),
  ),
  body: Center(
  child: Switch(
  value: ThemeProvider2.isDark, // Assuming isDark is a property of ThemeProvider
  onChanged: (value) {
  ThemeProvider2.toggleTheme(); // Implement your theme toggle logic
  },
  ),
  ),
  );
  },
  );
  }
  }

