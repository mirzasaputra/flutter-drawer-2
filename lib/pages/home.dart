import 'package:flutter/material.dart';
import 'package:projectdrawer/component/nav_drawer.dart';
import 'package:projectdrawer/pages/song.dart';
import 'package:projectdrawer/pages/album.dart';
import 'package:projectdrawer/pages/gallery.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Flutter - Belajar Drawer"),
              bottom: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white54,
                tabs: [
                  Tab(icon: const Icon(Icons.audiotrack), text: "Songs"),
                  Tab(icon: const Icon(Icons.album), text: "Album"),
                  Tab(icon: const Icon(Icons.collections), text: "Gallery"),
                ],
              ),
            ),
            drawer: DrawerWidget(),
            body: TabBarView(children: <Widget>[
              SongPage(),
              AlbumPage(),
              GalleryPage(),
            ])),
      );
}
