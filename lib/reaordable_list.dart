// reorderable_list_page.dart
import 'package:flutter/material.dart';
import 'package:reorderables/reorderables.dart';

class ReorderableListPage extends StatefulWidget {
  @override
  _ReorderableListPageState createState() => _ReorderableListPageState();
}

class _ReorderableListPageState extends State<ReorderableListPage> {
  List<String> _items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final String item = _items.removeAt(oldIndex);
      _items.insert(newIndex, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reorderable List Demo'),
      ),
      body: ReorderableColumn(
        onReorder: _onReorder,
        children: _items
            .map((item) => Card(
                  key: ValueKey(item),
                  child: ListTile(
                    title: Text(item),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
