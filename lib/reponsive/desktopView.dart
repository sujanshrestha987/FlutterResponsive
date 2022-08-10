import 'package:flutter/material.dart';
import 'package:nebulademo/constants.dart';

import '../util/myBox.dart';
import '../util/myTile.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      body:Row(children: [
        myDrawer,
        Expanded(
          flex: 2,
          child: Column(children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4),
                  itemBuilder: (context, index) {
                    return MyBox();
                  }),
            ),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context,index){

                  return MyTile();
                },

              )
          )
        ],),),
        Expanded(
            flex: 1,
            child: Column(
          children: [
            Expanded(child: Container(color: Colors.purple,))
          ],
        ))
      ],)
    );
  }
}
