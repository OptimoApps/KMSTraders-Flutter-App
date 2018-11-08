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
                child: Text(
                  "KMS Traders",
                  style: TextStyle(color: Colors.white, fontSize: 54.0),
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
              child: Text("Test"),
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
