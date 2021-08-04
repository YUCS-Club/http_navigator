import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_and_http_demo/router/router.gr.dart';
import 'package:route_and_http_demo/service/api_service.dart';

//ctrl+.
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    ApiService().getHolidayResponse("MM", "2020").then((response) {
      print(response.toString());
    }).catchError((e) {
      print(e.toString());
    });
  }

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
      ),
    );
  }
}
