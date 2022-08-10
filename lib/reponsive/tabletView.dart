import 'package:flutter/material.dart';

import '../constants.dart';
import '../util/myBox.dart';
import '../util/myTile.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        backgroundColor: myDefaultBackground,
        drawer: myDrawer,
      body: Column(children: [
        AspectRatio(
          aspectRatio: 4,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
                itemCount: 4,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
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
      ],),
    );
  }
}
