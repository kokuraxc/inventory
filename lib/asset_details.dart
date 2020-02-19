import 'package:flutter/material.dart';
import 'package:inventory/drawer.dart';

class AssetDetailsScreen extends StatefulWidget {
  @override
  _AssetDetailsScreenState createState() => _AssetDetailsScreenState();
}

class _AssetDetailsScreenState extends State<AssetDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Asset Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image.asset(
                  'images/output_gear.png',
                  fit: BoxFit.scaleDown,
                  width: 200,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Name: ',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Output Gear',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Quantity: ',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '2',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Bar Code No.: ',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              Text(
                '652345866',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(width: 50),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Tracking Logs:',
            style: TextStyle(fontSize: 30, color: Colors.grey),
          ),
          SizedBox(
            height: 350,
            child: ListView(
              children: ListTile.divideTiles(context: context, tiles: [
                ListTile(
                  title: Text('1 was added into the Assets.'),
                  subtitle: Text('27 Jan 2020 14:25'),
                ),
                ListTile(
                  title: Text('3 was added into the Assets.'),
                  subtitle: Text('24 Jan 2020 13:35'),
                ),
                ListTile(
                  title: Text('2 was added into the Assets.'),
                  subtitle: Text('23 Jan 2020 9:15'),
                ),
                ListTile(
                  title: Text('1 was removed into the Assets.'),
                  subtitle: Text('22 Jan 2020 11:25'),
                ),
                ListTile(
                  title: Text('1 was removed into the Assets.'),
                  subtitle: Text('21 Jan 2020 15:25'),
                ),
              ]).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
