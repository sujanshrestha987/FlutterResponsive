import 'package:flutter/material.dart';
import 'package:nebulademo/constants.dart';
import 'package:nebulademo/util/myBox.dart';

import '../util/myTile.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(children: [
        AspectRatio(
          aspectRatio: 1,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
                itemCount: 4,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
