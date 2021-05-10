import 'package:flutter/material.dart';

import './category_list.dart';
import './reorder_list.dart';
import './ads_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: <Widget>[
          titleText(),
          CategoryList(),
          orderAgainText(),
          ReorderList(),
          AdsList(),
          allResBtn(),
        ],
      ),
    );
  }

  Widget allResBtn() {
    return Container(
      width: 200,
      height: 25,
      margin: EdgeInsets.symmetric(
        vertical: 2.5,
        horizontal: 5,
      ),
      child: FlatButton(
          color: Colors.orange.shade700,
          onPressed: () {},
          child: Text(
            'View all restaurants',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          )),
    );
  }

  Widget orderAgainText() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Order again',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: Colors.orange,
            size: 30,
          ),
        ],
      ),
    );
  }

  Widget titleText() {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        'What would you like to order',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: FlatButton(
          onPressed: () {},
          child: Icon(
            Icons.menu,
          )),
      title: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Delivering to',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'Home',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Icon(
          Icons.search,
          color: Colors.black,
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
