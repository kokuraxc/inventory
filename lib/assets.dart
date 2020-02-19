import 'package:flutter/material.dart';
import 'package:inventory/drawer.dart';
import 'package:inventory/asset_details.dart';

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
  @override
  Widget build(BuildContext context) {
    var assets = [
      AssetItem(2, context,
          imagePath: 'images/output_shaft.png', name: 'Output Shaft'),
      AssetItem(2, context,
          imagePath: 'images/output_gear.png', name: 'Output Gear'),
      AssetItem(3, context, imagePath: 'images/nut.png', name: 'Nut'),
      AssetItem(2, context, imagePath: 'images/30213.png', name: '30213'),
      AssetItem(1, context,
          imagePath: 'images/input_shaft.png', name: 'Input Shaft'),
      AssetItem(14, context, imagePath: 'images/30205.png', name: '30205'),
      AssetItem(5, context, imagePath: 'images/32204.png', name: '32204'),
      AssetItem(1, context,
          imagePath: 'images/transfer_shaft.png', name: 'Transfer Shaft'),
    ];

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
  BuildContext context;
  int quantity = 0;
  AssetItem(this.quantity, this.context, {this.imagePath, this.name});
  TableRow getRow() {
    return TableRow(
      children: [
        GestureDetector(
          onTap: () => Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('1 Output Shaft is required for PO in CRM app.'),
            action: SnackBarAction(
              label: 'Dismiss',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          )),
          child: SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.scaleDown,
                ),
              )),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AssetDetailsScreen(),
            ),
          ),
          child: SizedBox(
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
