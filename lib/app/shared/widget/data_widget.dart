import 'package:flutter/material.dart';

class DataWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const DataWidget({Key key, this.title, this.subtitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title.substring(0, 12),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  subtitle,
                  maxLines: 3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
