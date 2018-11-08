import 'package:flutter/material.dart';
import './screens/about_us.dart';
import './screens/contact_us.dart';
import './screens/home.dart';

class KMSTraders extends StatefulWidget {
  @override
  KMSTradersState createState() => new KMSTradersState();
}

class KMSTradersState extends State<KMSTraders> {
  int _page = 0;
  String _title = "KMS Traders";
  PageController _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.indigo),
        home: SafeArea(
            child: Scaffold(
          appBar: AppBar(
              title: Text(_title),
              backgroundColor: Colors.indigo,
              centerTitle: true),
          body: PageView(
            children: <Widget>[Home(), ContactUs(), AboutUs()],
            pageSnapping: true,
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                _page = index;
              });
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: _page,
              onTap: _navigationTapped,
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  title: new Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.mail),
                  title: new Text('Contact Us'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text('About Us'))
              ]),
        )));
  }

  void _navigationTapped(int page) {
    setState(() {
      switch (page) {
        case 0:
          _title = "KMS Traders Home";
          break;
        case 1:
          _title = "Contact Us";
          break;
        case 2:
          _title = "About Us";
          break;
      }
    });

    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
