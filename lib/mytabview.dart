/**
 * @author Vignesh Hendrix
 * @email sanjivy.android@gmail.com
 * @create date 2020-11-10 01:47:53
 * @modify date 2020-11-10 01:47:53
 */
import 'package:sharestapp/homepage.dart';
import 'package:flutter/material.dart';
import 'package:sharestapp/sharevideopage.dart';
import 'package:sharestapp/wastatuspage.dart';
import 'package:sharestapp/sharestapppage.dart';

class MyTabView extends StatefulWidget {
  @override
  _MyTabViewState createState() => _MyTabViewState();
}

class _MyTabViewState extends State<MyTabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sharestapp',
            style: TextStyle(
              fontSize: 26.5,
            ),
          ),
          elevation: 3.0,
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                // text: 'HOME',
                icon: Icon(Icons.home_outlined),
              ),
              Tab(
                text: 'WHATSAPP STATUS',
                // icon: Icon(Icons.ac_unit),
              ),
              Tab(
                text: 'SAVED IMAGES',
                // icon: Icon(Icons.ac_unit),
              ),
              Tab(
                text: 'SHARE VIDEOS',
                // icon: Icon(Icons.ac_unit),
              ),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        // drawer: SideMenu(),
        body: TabBarView(
          children: [
            MyHomePage(),
            MyWAStatusPage(),
            MySharestappPage(),
            ShareVideoPage(),
          ],
        ),
      ),
    );
  }
}
