import 'package:flutter/material.dart';
import 'package:tapp/services/drawer_service.dart';
import './drawer.dart';
import 'init.dart';

class Base extends StatelessWidget {
  Base({this.child});
  final Widget child;

  DrawerService drawerService = getIt.get<DrawerService>();

  // DrawerService drawerService = Get.put(DrawerService());

  @override
  Widget build(BuildContext context) {
    drawerService.key = GlobalKey();
    return Scaffold(
      body: child,
      key: drawerService.key,
      drawer: NavDrawer(),
    );
  }
}
