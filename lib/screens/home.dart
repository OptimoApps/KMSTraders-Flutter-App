import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import './full_dialog.dart';

class Home extends StatelessWidget {
  final Table _metCoke = Table();

  final Table _foundaryCoke = Table(
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    border: TableBorder.all(width: 0.3, color: Colors.black45),
    children: [
      TableRow(children: [
        Text("Size", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("FC % min", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("S% max", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Ash% max", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("VM% max", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Moisture% max", style: TextStyle(fontWeight: FontWeight.bold))
      ]),
      TableRow(children: [
        Text("90-150mm"),
        Text("85.00"),
        Text("0.75"),
        Text("13.00"),
        Text("1.50"),
        Text("6.00")
      ]),
      TableRow(children: [
        Text("90-150mm"),
        Text("85.00"),
        Text("0.75"),
        Text("13.00"),
        Text("1.50"),
        Text("6.00")
      ]),
      TableRow(children: [
        Text("90-150mm"),
        Text("87.00"),
        Text("0.75"),
        Text("12.00"),
        Text("1.50"),
        Text("6.00")
      ])
    ],
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 0.0),
                child: SizedBox(
                    height: 150.0,
                    width: 200.0,
                    child: new Carousel(
                      images: [
                        ExactAssetImage("assets/coal.jpg"),
                        ExactAssetImage("assets/coal2.jpg")
                      ],
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Column(
                  children: <Widget>[
                    Card(
                        child: Column(children: <Widget>[
                      ListTile(
                          leading: Icon(Icons.rounded_corner),
                          title: Text('Met Coke'),
                          subtitle: Text("Size: 20 - 40 mm")),
                      ButtonTheme.bar(
                          child: ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FlatButton(
                            child: Text('See Specification'),
                            textColor: Colors.amber.shade500,
                            onPressed: () {
                              Navigator.of(context)
                                  .push(new MaterialPageRoute<Null>(
                                      builder: (BuildContext context) {
                                        return FullDialog(
                                          title: "Met Coke Specification",
                                          specification: _metCoke,
                                        );
                                      },
                                      fullscreenDialog: true));
                            },
                          )
                        ],
                      ))
                    ])),
                    Card(
                        child: Column(children: <Widget>[
                      ListTile(
                          leading: Icon(Icons.rounded_corner),
                          title: Text('Foundary Coke'),
                          subtitle: Text("Size: 90 - 150 mm")),
                      ButtonTheme.bar(
                          child: ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FlatButton(
                            child: Text('See Specification'),
                            textColor: Colors.amber.shade500,
                            onPressed: () {
                              Navigator.of(context)
                                  .push(new MaterialPageRoute<Null>(
                                      builder: (BuildContext context) {
                                        return FullDialog(
                                            title:
                                                "Foundary Coke Specification",
                                            specification: _foundaryCoke);
                                      },
                                      fullscreenDialog: true));
                            },
                          )
                        ],
                      ))
                    ]))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
