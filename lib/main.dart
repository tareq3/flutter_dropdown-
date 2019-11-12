import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primaryColor: Colors.cyan),
      home: MainPage(title: 'My App Title'),
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({Key key, this.title}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currencies = ['Rupees', 'Dollars', 'Pounds'];
  String itemSelected;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    itemSelected = _currencies.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          widget.title,
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              elevation: 3,
              style: TextStyle(
                color: Colors.deepPurple,
              ),
              underline: Container(
                height: 1,
                color: Colors.deepPurpleAccent,
              ),
              items: _currencies.map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (selectedItem) {
                setState(() {
                  itemSelected = selectedItem;
                });
              },
              value: itemSelected,
            ),
          ],
        ),
      ),
    );
  }
}
