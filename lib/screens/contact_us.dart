import 'package:flutter/material.dart';
import 'package:map_native/map_native.dart';

class ContactUs extends StatelessWidget {
  final MediaQueryData queryData = null;

  @override
  Widget build(BuildContext context) {
    final queryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Stack(children: <Widget>[
      SizedBox(
          width: double.infinity,
          height: queryData.size.height,
          child: MapView(
              initialLocation: const LatLong(11.6447845, 78.130787),
              inititialZoom: 14.0)),
      Card(
        color: Color(0xFF5D6D7E),
        margin: EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.contact_phone, color: Color(0xFFECF0F1)),
              title: Text('K.M.S Traders',
                  style: TextStyle(color: Color(0xFFECF0F1))),
              subtitle: Text(
                  '3/237-F, Puttur Itteri Road,\n Nethimedu, Salem -636002,'
                  ' \n Tamil Nadu, \n India \n 9443227617 \n 9894331102',
                  style: TextStyle(color: Color(0xFFECF0F1))),
            ),
          ],
        ),
      ),
      /* child: Container(
          child: Column(children: <Widget>[
        SizedBox(
            width: double.infinity,
            height: queryData.size.height,
            child: MapView(
                initialLocation: const LatLong(11.6447845, 78.130787),
                inititialZoom: 14.0)),
        Card(
          color: Color(0xFF5D6D7E),
          margin: EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.contact_phone, color: Color(0xFFECF0F1)),
                title: Text('K.M.S Traders',
                    style: TextStyle(color: Color(0xFFECF0F1))),
                subtitle: Text(
                    '3/237-F, Puttur Itteri Road,\n Nethimedu, Salem -636002,'
                    ' \n Tamil Nadu, \n India \n 9443227617 \n 9894331102',
                    style: TextStyle(color: Color(0xFFECF0F1))),
              ),
            ],
          ),
        ),
      ])), */
    ]));
  }
}
