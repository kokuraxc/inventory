import 'package:flutter/material.dart';
import 'package:inventory/drawer.dart';

class AssetsScreen extends StatefulWidget {
  @override
  _AssetsScreenState createState() => _AssetsScreenState();
}

class _AssetsScreenState extends State<AssetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assets"),
      ),
      body: Center(
        child: AssetTable(),
      ),
      drawer: InventoryDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add New Asset',
        child: Icon(Icons.add),
      ),
    );
  }
}

class AssetTable extends StatefulWidget {
  @override
  _AssetTableState createState() => _AssetTableState();
}

class _AssetTableState extends State<AssetTable> {
  var assets = [
    AssetItem(2, imagePath: 'images/output_shaft.png', name: 'Output Shaft'),
    AssetItem(2, imagePath: 'images/output_gear.png', name: 'Output Gear'),
    AssetItem(3, imagePath: 'images/nut.png', name: 'Nut'),
    AssetItem(2, imagePath: 'images/30213.png', name: '30213'),
    AssetItem(1, imagePath: 'images/input_shaft.png', name: 'Input Shaft'),
    AssetItem(14, imagePath: 'images/30205.png', name: '30205'),
    AssetItem(5, imagePath: 'images/30204.png', name: '30204'),
    AssetItem(1,
        imagePath: 'images/transfer_shaft.png', name: 'Transfer Shaft'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Table(
        border: TableBorder(
          horizontalInside: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        children: assets.map((x) => x.getRow()).toList(),
      ),
    );
  }
}

class AssetItem {
  final String imagePath;
  final String name;
  int quantity = 0;
  AssetItem(this.quantity, {this.imagePath, this.name});
  TableRow getRow() {
    return TableRow(
      children: [
        SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.scaleDown,
              ),
            )),
        SizedBox(
          height: 100,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: Center(
            child: Text(
              quantity.toString(),
            ),
          ),
        ),
      ],
    );
  }
}
