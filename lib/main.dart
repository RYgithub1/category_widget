import 'package:flutter/material.dart';
import 'category.dart'; // or below
// import 'package:task_02_category_widget/category.dart';



// Pass this informations into category.dart
const _categoryName = 'Happy Birthday!';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

final List categoryList = [_categoryName, _categoryIcon, _categoryColor];



void main() {
  runApp(UnitConverterApp());
}



class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () { Scaffold.of(context).openDrawer(); },  // to side drawer
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Text("Message"),
          centerTitle: true,
        ),
        backgroundColor: Colors.green[100],
        body: Center(
          child: Category(categoryList),  // argument into xxx.dart
        ),

        // side drawer itself
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header infos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
      );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: scaffold,
    );
  }
}
