import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerService {
  // BuildContext context;
  DrawerService() {}

  GlobalKey<ScaffoldState> key;
  openDrawer() {
    key.currentState.openDrawer();
    // Scaffold.of(context).openDrawer();
  }
}
