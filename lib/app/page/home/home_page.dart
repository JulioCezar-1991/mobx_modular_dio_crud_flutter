import 'package:crud_mobx/app/page/home/home_controller.dart';
import 'package:crud_mobx/app/shared/widget/data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          FlatButton(
            child: Icon(
              Icons.autorenew,
              color: Colors.white,
            ),
            onPressed: () {
              homeController.fetchData();
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (value) {
                homeController.setBody(value);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("Save"),
                  onPressed: () {
                    homeController.saveData();
                  },
                ),
                RaisedButton(
                  child: Text("Patch"),
                  onPressed: () {
                    homeController.updateData();
                  },
                ),
                RaisedButton(
                  child: Text("Delete"),
                  onPressed: () {
                    homeController.deleteData();
                  },
                )
              ],
            ),
            Expanded(
              child: Observer(
                builder: (_) {
                  if (homeController.dataList.error != null) {
                    return Center(
                      child: Text('Error'),
                    );
                  }
                  if (homeController.dataList.value == null) {
                    return Center(child: CircularProgressIndicator());
                  }

                  var list = homeController.dataList.value;
                  return ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return DataWidget(
                        title: list[index].title,
                        subtitle: list[index].body,
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
