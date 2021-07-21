import 'package:flutter/material.dart';
import 'package:hook_up_rent/pages/home/tab_index/index.dart';
import '../../widgets/page_content.dart';

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    TabIndex(),
    PageContent(name: '找房'),
    PageContent(name: '咨询'),
    PageContent(name: '我的'),
  ];
  static const List<BottomNavigationBarItem> _navigationBarOptions =
      <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: '找房'),
    BottomNavigationBarItem(icon: Icon(Icons.info), label: '咨询'),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '我的'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _navigationBarOptions,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
