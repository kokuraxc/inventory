import 'package:flutter/material.dart';
import 'package:inventory/assets.dart';
import 'package:inventory/messages.dart';
import 'package:inventory/relationship.dart';

class InventoryDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [
                    0.0,
                    0.3,
                    0.7,
                    1.0,
                  ],
                      colors: [
                    Colors.green,
                    Colors.blue,
                    Colors.orange,
                    Colors.pink
                  ])),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'SMBA Inventory',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Assets'),
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => AssetsScreen(),
                ),
              ),
            ),
            ListTile(
              title: Text('Output/Input'),
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => RelationshipScreen(),
                ),
              ),
            ),
            ListTile(
              title: Text('Messages'),
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagesScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
