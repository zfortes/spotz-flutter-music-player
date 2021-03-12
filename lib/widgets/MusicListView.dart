import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(top: 15, left: 20, right: 20),
      decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(Radius.circular(7.0))
      ),
      child: Row(
        children: [
          Container(
            // flex: 2,
            child: Container(
              // width: 300,
              margin: EdgeInsets.all(10),
              // color: Colors.red,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/4bb82b72535211.5bead62fe26d5.jpg",
                  // width: 200,
                  // height: 200,
                ),
              ),
            ),
          ),
          Container(
            width: 260,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(padding: EdgeInsets.only(bottom: 3), child: Text("Georgeous", style: Theme.of(context).textTheme.bodyText1,)),
                Container(padding: EdgeInsets.only(top: 3), child: Text("Cameron Rogers", style: Theme.of(context).textTheme.bodyText2,))
              ],
            ),
          ),
          Container(
            child: Icon(
              CupertinoIcons.ellipsis_vertical
            ),
          )
        ],
      ),
    );
  }
}
