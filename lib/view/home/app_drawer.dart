import 'package:chat_box/provider/chat_data_provider.dart';
import 'package:chat_box/util/style/constants.dart';
import 'package:chat_box/view/home/home_style.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  final double width;

  const AppDrawer({Key key, this.width}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  @override
  Widget build(BuildContext context) {
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Material(
      child: Container(
        width: widget.width * .75,
        child: Drawer(
          elevation: 5.0,
          child: ListView(
            padding: const EdgeInsets.all(0.0),
            children: [
              DrawerHeader(
                child: Text(
                  'Hello Nirjan',
                  style: isDarkMode
                      ? appDrawerHeaderTextStyleDark
                      : appDrawerHeaderTextStyleLight,
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings_brightness),
                trailing: Switch(
                  onChanged: toggleSwitch,
                  value: isSwitched,
                  activeColor: Colors.blue,
                  activeTrackColor: Colors.yellow,
                  inactiveThumbColor: Colors.redAccent,
                  inactiveTrackColor: Colors.orange,
                ),
                title: Text(
                  'Dark Mode',
                  style: isDarkMode
                      ? appDrawerItemTextStyleDark
                      : appDrawerItemTextStyleLight,
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text(
                  'Logout',
                  style: isDarkMode
                      ? appDrawerItemTextStyleDark
                      : appDrawerItemTextStyleLight,
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'ON';
      });
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'OFF';
      });
    }
  }
}
