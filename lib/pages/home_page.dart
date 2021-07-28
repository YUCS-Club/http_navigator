import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_and_http_demo/router/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home page"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              //Go to Detail page
              // Model(1,"Get","gg",)
              AutoRouter.of(context).push(DetailRoute(id: 1));
            },
            child: Text("Go to Detail Page"),
          ),
        ));
  }
}
