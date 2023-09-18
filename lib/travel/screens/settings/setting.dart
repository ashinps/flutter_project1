import 'package:flutter/material.dart';
import 'package:flutter_project1/travel/screens/delete_account/delete account.dart';
import 'package:flutter_project1/travel/screens/change_password/changepassword.dart';
import 'package:flutter_project1/travel/screens/privacy%20policy/privacypolicy.dart';
import 'package:flutter_project1/travel/screens/profile/profile.dart';
import 'package:flutter_project1/travel/screens/login/sign_in.dart';
import 'package:flutter_project1/travel/screens/welcome_page/welcome_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_project1/travel/utils/theme_provider.dart';


class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}



class _SettingsState extends State<Settings> {
  bool notifications = true;
  String? language='english';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [


          //Account Tile
          ListTile(
              title: const Text('Account'),
              leading: const Icon(Icons.account_circle_sharp),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const ProfileSettings()),);
              }),

          //Privacy Policy Tile
          ListTile(
              title: const Text('Privacy Policy'),
              leading: const Icon(Icons.privacy_tip),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const PrivacyPolicy()),);
              }),

          //Notifications Tile
          ListTile(
            title: const Text('Notifications'),
            leading: const Icon(Icons.notifications),
            trailing: Switch(value: notifications, onChanged: (bool value) {
              setState(() {
                notifications = !notifications;
              });
            }),
          ),

          //Dark/Light Tile
          ListTile(
            title: const Text('Dark/Light'),
            leading: const Icon(Icons.light_mode_outlined),
            trailing: Consumer<ThemeProvider>(
              builder: (context, themeProvider, child) {
                return Switch(
                  value: themeProvider.isDark,
                  onChanged: (value) {
                    themeProvider.toggleTheme();
                  },
                );
              },
            ),
          ),

          //Languages Tile
          ListTile(
            title: const Text('Language'),
            leading: const Icon(Icons.language),
            trailing: DropdownButton(
              value: language,
              items: const [
                DropdownMenuItem<String>(
                  value: 'english',
                  child: Text('English'),),
                DropdownMenuItem<String>(
                  value: 'malayalam',
                  child: Text('Malayalam'),)
              ],
              onChanged: (String? value) {
                setState(() {
                  language = value;
                });
              },),
          ),

          //Change Password Tile
          ListTile(
              title: const Text('Change Password'),
              leading: const Icon(Icons.password),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const ChangePassword()),);
              }
          ),

          //Delete Account Tile
          ListTile(
              title: const Text('Delete Account'),
              leading: const Icon(Icons.delete),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const DeleteAccount()),);
              }
          ),

          //Log Out Tile
          ListTile(
              title: const Text('Log Out'), leading: const Icon(Icons.logout),
              onTap: () async {
                await signOutGoogle();
                SharedPreferences.getInstance().then((pref) {
                  pref.setBool('LoggedIn', false);
                });
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                      return const WelcomePage();
                    }), ModalRoute.withName('/'));
              }),
        ],
      ),
    );
  }

  }

