import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      _drawerHeader(),
      _drawerItem(
          icon: Icons.audiotrack,
          text: "Songs",
          onTap: () {
            DefaultTabController.of(context)?.animateTo(0);
            Navigator.pop(context);
          }),
      _drawerItem(
          icon: Icons.album,
          text: "Album",
          onTap: () {
            DefaultTabController.of(context)?.animateTo(1);
            Navigator.pop(context);
          }),
      const Divider(
        height: 25,
        thickness: 1.0,
      ),
      const Padding(
          padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
          child: Text('Labels',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ))),
      _drawerItem(
          icon: Icons.collections,
          text: "Gallery",
          onTap: () {
            DefaultTabController.of(context)?.animateTo(2);
            Navigator.pop(context);
          }),
    ]));
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text("Mirza Saputra"),
      accountEmail: Text("mirzasaputra066@gmail.com"),
      currentAccountPicture: ClipOval(child: Image(image: AssetImage('assets/images/profil.jpg'), fit: BoxFit.cover)),
    );
  }

  Widget _drawerItem({IconData? icon, required String text, GestureTapCallback? onTap}) {
    return ListTile(
        title: Row(
          children: <Widget>[
            Icon(icon),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        onTap: onTap);
  }
}
