import 'package:flutter/material.dart';

class Drawer extends StatelessWidget {
  const Drawer(
      {Key? key,
      required MaterialColor backgroundColor,
      required ListView child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const drawerlogo = "https://anticsgfx.cf/assets/images/Anticgfx.png";
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(
        children: const [
          DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(drawerlogo),
                ),
                accountName: Text("Moeed Aslam"),
                accountEmail: Text("MoeedAslam786@gmail.com"),
              )),
          ListTile(
            leading: Icon(Icons.home),
          )
        ],
      ),
    );
  }
}
