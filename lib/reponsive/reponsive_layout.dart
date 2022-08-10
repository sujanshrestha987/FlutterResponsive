import 'package:flutter/material.dart';
import 'package:nebulademo/reponsive/desktopView.dart';
import 'package:nebulademo/reponsive/mobileView.dart';
import 'package:nebulademo/reponsive/tabletView.dart';

class ResponsiveLayout extends StatelessWidget {

 final Widget mobileScaffold;
 final Widget tabletScaffold;
 final Widget desktopScaffold;

  ResponsiveLayout({Key? key,  required this.mobileScaffold, required this.tabletScaffold, required this.desktopScaffold}) : super(key: key){
    mobileScaffold;
    tabletScaffold;
    desktopScaffold;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth<600){
            return mobileScaffold;
          }else if (constraints.maxWidth <1100){
            return tabletScaffold;
          }else{
            return desktopScaffold;
          }
        }
    );
  }
}
