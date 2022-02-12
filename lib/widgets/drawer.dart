import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl ="https://static.wikia.nocookie.net/subnautica/images/6/63/Pengling.png/revision/latest?cb=20190127223654";

    return Drawer(
      child: Container(
        color: Colors.green,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,

                  accountName: Text("Debartha Chakraborty"),
                  accountEmail: Text("debartha2riki@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.lightBlueAccent,
                    backgroundImage: NetworkImage(imageUrl),
                  ) ,
                )
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                  "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white
                ),
              ),

            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),
              ),

            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),
              ),

            )

          ],
        ),
      ),
    );
  }
}
