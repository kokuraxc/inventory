import 'package:flutter/material.dart';
import 'package:inventory/drawer.dart';

class RelationshipScreen extends StatefulWidget {
  @override
  _RelationshipScreenState createState() => _RelationshipScreenState();
}

class _RelationshipScreenState extends State<RelationshipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assets"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Image.asset('images/output_shaft_relationship.png'),
        ),
      ),
      drawer: InventoryDrawer(),
    );
  }
}
