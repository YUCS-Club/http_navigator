import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int id;
  const DetailPage(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(id.toString()),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //go back to home page
            AutoRouter.of(context).pop();
          },
          child: Text("Back to Home Page"),
        ),
      ),
    );
  }
}
