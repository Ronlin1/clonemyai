import 'package:flutter/material.dart';
import 'package:charify/utils/constants.dart';
import 'package:charify/screens/exportsScreens.dart';
import 'package:charify/services/auth_service.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Charify',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Together We Can Do More',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: kPrimaryColor),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.create, color: kPrimaryColor),
            title: Text('Create Campaign'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkInProgressScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.campaign, color: kPrimaryColor),
            title: Text('Stand Alone Campaigns'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkInProgressScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.restaurant, color: kPrimaryColor),
            title: Text('Food Centers'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EHelp()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.book, color: kPrimaryColor),
            title: Text('Education Centres'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EducationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.wash, color: kPrimaryColor),
            title: Text('Clothing Centres'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Clothes()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.bloodtype, color: kPrimaryColor),
            title: Text('Blood Banks'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Health()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.group, color: kPrimaryColor),
            title: Text('Meet The Team'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TeamScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: kPrimaryColor),
            title: Text('About'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkInProgressScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.help, color: kPrimaryColor),
            title: Text('Help'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkInProgressScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: kPrimaryColor),
            title: Text('Logout'),
            onTap: () async {
              // Perform logout action
              await AuthService.signOut(); // Call your signOut method
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomeScreen()),
              );
              // Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}
