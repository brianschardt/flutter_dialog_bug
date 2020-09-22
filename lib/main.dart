import 'package:flutter/material.dart';
import 'package:tapp/base.dart';
import 'package:tapp/services/drawer_service.dart';
import './init.dart';

void main() {
  initServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Base(
              child: Home(),
            ),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/screen1': (context) => Base(
              child: Screen1(),
            ),
        '/screen2': (context) => Base(
              child: Screen2(),
            ),
      },
    );
  }
}

class Home extends StatelessWidget {
  DrawerService drawerService = getIt.get<DrawerService>();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RaisedButton(
          child: Text('Screen 1'),
          onPressed: () => Navigator.pushNamed(context, '/screen1'),
        ),
        RaisedButton(
          child: Text('Screen 2'),
          onPressed: () => Navigator.pushNamed(context, '/screen2'),
        ),
        RaisedButton(
          child: Text('Open drawer'),
          onPressed: () => drawerService.openDrawer(),
        )
      ],
    );
  }
}

class Screen1 extends StatelessWidget {
  DrawerService drawerService = getIt.get<DrawerService>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BackButton(
          color: Colors.black,
        ),
        RaisedButton(
          child: Text('Home'),
          onPressed: () => Navigator.pushNamed(context, '/'),
        ),
        RaisedButton(
          child: Text('Screen 2'),
          onPressed: () => Navigator.pushNamed(context, '/screen2'),
        ),
        RaisedButton(
          child: Text('Open drawer'),
          onPressed: () => drawerService.openDrawer(),
        )
      ],
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BackButton(
          color: Colors.black,
        ),
        RaisedButton(
          child: Text('Home'),
          onPressed: () => Navigator.pushNamed(context, '/'),
        ),
        RaisedButton(
          child: Text('Screen 1'),
          onPressed: () => Navigator.pushNamed(context, '/screen1'),
        )
      ],
    );
  }
}
