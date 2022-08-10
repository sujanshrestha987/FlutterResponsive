import 'package:flutter/material.dart';
import 'package:nebulademo/reponsive/desktopView.dart';
import 'package:nebulademo/reponsive/mobileView.dart';
import 'package:nebulademo/reponsive/reponsive_layout.dart';
import 'package:nebulademo/reponsive/tabletView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileView(),
          tabletScaffold: TabletView(),
          desktopScaffold: DesktopView(),
      ),
    );
  }
}