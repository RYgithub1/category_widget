import 'package:flutter/material.dart';
import 'main.dart';



class Category extends StatelessWidget {
  // A [Category] saves the name of the Category (e.g. 'Length'),
  // its color for the UI, and the icon that represents it (e.g. a ruler).
  const Category(categoryList);  //  ここで"child: Category(categoryList),"受け取る


  // ++++++++++++++++++++++++++++++++++++++++++++
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.greenAccent[700]),
          borderRadius: BorderRadius.circular(50),
        ),


        child: InkWell(
          onTap: () {  // onTap(){}は:なしエラー
            print('I was tapped!');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  categoryList[1],
                  color: categoryList[2],
                  size: 60.0,
                ),
              ),
              SizedBox(width: 20.0,),
              Text(
                categoryList[0],
                style: TextStyle(fontSize: 24.0,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
