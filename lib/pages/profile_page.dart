import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';
import '../provider/database_model.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    // final auth = Provider.of<Auth>(context);
    final user = Provider.of<DataBase>(context, listen: false).getUser;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.lightBlue,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 50,
                ),
                Text(user.name),
              ],
            ),
          ),
          ListTile(
            leading: Icon(FlutterIcons.notebook_mco),
            title: Text("My Appointments"),
            onTap: () => null,
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Change Preferences"),
            onTap: () => null,
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Logout of this app"),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
