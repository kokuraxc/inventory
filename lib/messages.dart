import 'package:flutter/material.dart';
import 'package:inventory/drawer.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: ListTile.divideTiles(context: context, tiles: [
              ListTile(
                leading: Icon(Icons.info),
                title: Text('1 Transfer Shaft was added into the Assets.'),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('3 Nuts were added into the Assets.'),
              ),
              ListTile(
                leading: Icon(Icons.warning, color: Colors.yellow),
                title: Text(
                    '1 Output Shaft is required. Being purchased in CRM app.'),
              ),
              ListTile(
                leading: Icon(Icons.error, color: Colors.red),
                title: Text('6 Nuts are required. 3 are available.'),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title:
                    Text('10 32204 bearing cones were added into the Assets. '),
              ),
            ]).toList(),
          ),
        ),
      ),
      drawer: InventoryDrawer(),
    );
  }
}
