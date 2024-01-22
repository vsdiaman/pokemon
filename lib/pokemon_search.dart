import 'package:flutter/material.dart';

class SearchBarApp extends StatefulWidget {
  const SearchBarApp({Key? key}) : super(key: key);

  @override
  _SearchBarAppState createState() => _SearchBarAppState();
}

class _SearchBarAppState extends State<SearchBarApp> {
  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      builder: (BuildContext context, SearchController controller) {
        return Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 200.0, 
          height: 40.0, 
          child: SearchBar(
            controller: controller,
            padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(
                  horizontal: 8.0), 
            ),
            leading: const Icon(Icons.search),
            trailing: <Widget>[
              //
            ],
          ),
        );
      },
      suggestionsBuilder: (BuildContext context, SearchController controller) {
        return List<ListTile>.generate(5, (int index) {
          final String item = 'item $index';
          return ListTile(
            title: Text(item),
            onTap: () {
              setState(() {
                controller.closeView(item);
              });
            },
          );
        });
      },
    );
  }
}
