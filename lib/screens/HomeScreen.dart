import 'package:exam_preparation/screens/DashBoard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  void onNavigationSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget getNavigationWidget(int index) {
    switch (index) {
      case 0:
        return new DashBoard();
      default:
        return Center(child: Text("No Layout Found"));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: new Text('Home')),
    BottomNavigationBarItem(
        icon: Icon(Icons.ac_unit), title: new Text('Practice')),
    BottomNavigationBarItem(
        icon: Icon(Icons.person), title: new Text('Profile'))
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Exam preparation",
      home: Scaffold(
        body: getNavigationWidget(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            items: items,
            onTap: (index) {
              onNavigationSelected(index);
            }),
      ),
    );
  }
}
