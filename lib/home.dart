import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_grid_view/school.dart';
import 'package:flutter_grid_view/oval.dart';
import 'contact.dart';
import 'local.dart';
import 'mt.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldState =
  new GlobalKey<ScaffoldState>();
//  final Connectivity _connectivity = new Connectivity();
//  StreamSubscription<ConnectivityResult> _connectivitySubscription;
//
//  Future<Null> checkConnectivity() async {
//    try {
//      final result = await InternetAddress.lookup('prixatech.com');
//      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
//        _scaffoldState.currentState.hideCurrentSnackBar();
//      }
//    } on SocketException catch (_) {
//      final snackBar = new SnackBar(
//        duration: Duration(minutes: 5),
//        backgroundColor: Colors.red,
//        content: new Text(
//          'Oops! No Internet Connection!',
//          textAlign: TextAlign.center,
//          style: new TextStyle(
//              fontWeight: FontWeight.w600, fontSize: 20.0, color: Colors.white),
//        ),
//      );
//
//      _scaffoldState.currentState.showSnackBar(snackBar);
//    }
//  }
  bool _homePage = false;
  String token;

  initState() {
//    _connectivitySubscription =
//        _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
//      checkConnectivity();
//    });
    super.initState();
  }

  void goToHome(String token) {
    this.token = token;
    if (this.mounted) {
      setState(() {
        _homePage = true;
      });
    }
  }

  @override
  void dispose() {}
  Future<bool> _onWillPop() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        //  title: new Text('Are you sure you want to exit?'),
        content: new Text('Are you sure you want to exit?'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    ) ??
        false;
  }
  final Color primary = Colors.white;
  final Color active = Colors.grey.shade800;
  final Color divider = Colors.grey.shade600;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.green,
            title: new Text('GRIDVIEW DEMO',style: TextStyle(fontSize: 18.0,color: Colors.white)),
            centerTitle: true,
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _scaffoldState.currentState.openDrawer();
              },
            ),
          ),
          key: _scaffoldState,
          drawer: _buildDrawer(),
          body: StaggeredGridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            children: <Widget>[
              _buildTile(
                Padding
                  (
                  padding: const EdgeInsets.all(4.0),
                  child:Column
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        Center(
                          child:  Image.asset('res/family.jpg',height: 60.0,width: 60.0,),
                        ),
                        Padding(padding: EdgeInsets.all(4.0)),
                        Text('CONTACT', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14.0)),
                      ]
                  ),
                ),
               onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => Contact())),
              ),
              _buildTile(
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child:Column
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        Center(
                          child:  Image.asset('res/family.jpg',height: 100.0,width: 100.0,),
                        ),
                        Padding(padding: EdgeInsets.all(4.0)),
                        Text('SCHOOL', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14.0)),
                      ]
                  ),
                ),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => School())),
              ),
              _buildTile(
                Padding
                  (
                  padding: const EdgeInsets.all(4.0),
                  child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        Center(
                          child:  Image.asset('res/family.jpg',height: 100.0,width: 100.0,),
                        ),
                        Padding(padding: EdgeInsets.all(4.0)),
                        Text('FAMILY', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14.0)),
                      ]
                  ),
                ),
               onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => School())),
              ),
              _buildTile(
                Padding
                  (
                  padding: const EdgeInsets.all(4.0),
                  child:Column
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        Center(
                          child:  Image.asset('res/family.jpg',height: 100.0,width: 100.0,),
                        ),
                        Padding(padding: EdgeInsets.all(4.0)),
                        Text('MT', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14.0)),
                      ]
                  ),
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => Master())),
              ),
              _buildTile(
                Padding
                  (
                  padding: const EdgeInsets.all(4.0),
                  child:Column
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        Center(
                          child:  Image.asset('res/family.jpg',height: 100.0,width: 100.0,),
                        ),
                        Padding(padding: EdgeInsets.all(4.0)),
                        Text('LOCAL', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14.0)),
                      ]
                  ),
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => Local())),
              ),
              _buildTile(
                Padding
                  (
                  padding: const EdgeInsets.all(4.0),
                  child:Column
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        Center(
                          child:  Image.asset('res/family.jpg',height: 60.0,width: 60.0,),
                        ),
                        Padding(padding: EdgeInsets.all(4.0)),
                        Text('PRIVATE', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14.0)),
                      ]
                  ),
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => Local())),
              )
            ],
            staggeredTiles: [
              StaggeredTile.extent(2, 120.0),
              StaggeredTile.extent(1, 150.0),
              StaggeredTile.extent(1, 150.0),
              StaggeredTile.extent(1, 150.0),
              StaggeredTile.extent(1, 150.0),
              StaggeredTile.extent(2, 120.0),
            ],
          )
      ),
    );
  }
  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10.0),
        shadowColor: Color(0x802196F3),
        child: InkWell
          (
          // Do onTap() if it isn't null, otherwise do print()
            onTap: onTap != null ? () => onTap() : () { print('Not set yet'); },
            child: child
        )
    );
  }
  _buildDrawer() {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Theme(
      data: Theme.of(context).copyWith(

      canvasColor: Colors.blue,

      ),
      child:Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: primary, boxShadow: [BoxShadow(color: Colors.black45)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.power_settings_new,
                        color: active,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.greenAccent, Colors.green])),
                    child: Icon(Icons.people,size: 50.0,color: Colors.white,),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "Nisha Ranjan Sah",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "@ranjan",
                    style: TextStyle(color: active, fontSize: 16.0),
                  ),
                  SizedBox(height: 30.0),
                  _buildRow(Icons.home, "Home"),
                  _buildDivider(),
                  _buildRow(Icons.person_pin, "My profile"),
                  _buildDivider(),
                  _buildRow(Icons.message, "Messages"),
                  _buildDivider(),
                  _buildRow(Icons.notifications, "Notifications"),
                  _buildDivider(),
                  _buildRow(Icons.settings, "Settings"),
                  _buildDivider(),
                  _buildRow(Icons.email, "Contact us"),
                  _buildDivider(),
                  _buildRow(Icons.info_outline, "Help"),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
      ),
    );
  }
  Divider _buildDivider() {
    return Divider(
      color: divider,
    );
  }

  Widget _buildRow(IconData icon, String title) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(children: [
          Icon(
          icon,
          color: active,
        ),
        SizedBox(width: 10.0),
        Text(
          title,
          style: tStyle,
        ),
        Spacer(),
    ]),
    );
  }
}
