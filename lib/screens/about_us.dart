import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            child: Stack(
      children: <Widget>[
        // The containers in the background
        Column(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height * .40,
                padding: EdgeInsets.only(top: 50.0),
                color: Colors.indigoAccent,
                alignment: AlignmentDirectional.topCenter,
                child: Column(
                  children: <Widget>[
                    Text(
                      "KMS Traders",
                      style: TextStyle(color: Colors.white, fontSize: 54.0),
                    ),
                    Text(
                      "Coal & Coke Seller, Buyer",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    )
                  ],
                )),
            Container(
              padding: EdgeInsets.only(top: 150.0),
              height: MediaQuery.of(context).size.height * .35,
              child: RaisedButton(
                  child: Text("Designed & Developed By Optimo Technologies"),
                  onPressed: _launchURL),
            )
          ],
        ),
        // The card widget with top padding,
        // incase if you wanted bottom padding to work,
        // set the `alignment` of container to Alignment.bottomCenter
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .25,
              right: 20.0,
              left: 20.0),
          child: Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: Card(
              child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                          "KMS Traders was established in the year 1990 by Mr K. Manickam."
                              " KMS Traders is an established seller in the field of coal & coke and we  "
                              "import  coke from all over India and outside india.\n"),
                      Text("GST: 33AFKPM8374C1ZD \n",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Row(
                        children: <Widget>[
                          Icon(Icons.contact_phone),
                          Text("  +91 9443227617",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  )),
              color: Colors.white,
              elevation: 4.0,
            ),
          ),
        )
      ],
    )));
  }

  _launchURL() async {
    const url = 'https://www.optimoapps.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
