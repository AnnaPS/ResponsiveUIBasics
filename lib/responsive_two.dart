import 'package:flutter/material.dart';
import 'package:responsive_app_basics/detail_page.dart';

class Item {
  final String title;
  final String description;

  Item({this.title, this.description});
}

class ResponsiveTwoPage extends StatelessWidget {
  final items = List.generate(
    20,
    (index) => Item(title: 'Title:$index', description: 'Description $index'),
  );

  _openDetail(BuildContext context, Item item) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => DetailPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multilayout'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(items[index].title),
              subtitle: Text(items[index].description),
              onTap: () {
                _openDetail(context, items[index]);
              },
            );
          }),
    );
  }
}
