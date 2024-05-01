import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 15, 83, 150),
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 15, 83, 150),
                  // image: DecorationImage(
                  //     image: AssetImage(
                  //       "assets/images/loginimg.png",
                  //     ),
                  //     fit: BoxFit.cover)),
                ),
                accountName: Text("Lakhdeep singh"),
                accountEmail: Text("gurpreet17jan@gmail.com"),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.white,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.white,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Help & support",
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
