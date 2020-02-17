import 'package:flutter/material.dart';

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
              decoration: BoxDecoration(color: Colors.orange),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('SMBA-Inventory')),
            ),
            ListTile(
              title: Text('Assets'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Output/Input'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Messages'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
