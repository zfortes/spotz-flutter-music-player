
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotz/widgets/MusicListView.dart';

class CollectionsMusic extends StatefulWidget {
  @override
  _CollectionsMusicState createState() => _CollectionsMusicState();

}

class _CollectionsMusicState extends State<CollectionsMusic> {
  final items = List<MusicListView>.generate(
    25,
      (i) => MusicListView(),
  );
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: SafeArea(
          child:Column(
            children: [
              Container(
                // width: 300,
                height: 250,
                // color: Colors.red,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                        "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/4bb82b72535211.5bead62fe26d5.jpg",
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
              ),
              Container(
                // height: 50,
                // width: 300,
                child: Center(
                  child: Text("All yours Days",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline2),
                ),
              ),
              Container(
                // height: 50,
                // width: 300,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Center(
                  child: Text("Shallou & Emmit Fen",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline3),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  // Let the ListView know how many items it needs to build.
                  itemCount: items.length,
                  // Provide a builder function. This is where the magic happens.
                  // Convert each item into a widget based on the type of item it is.
                  itemBuilder: (context, index) => items[index]
                )
              )
            ],
          ),
        )
      )
    );
  }
}
