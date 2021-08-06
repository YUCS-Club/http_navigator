import 'package:flutter/material.dart';
import 'package:route_and_http_demo/models/holiday_response.dart';
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
    // ApiService().getHolidayResponse("MM", "2020").then((response) {
    //   print(response.toString());
    // }).catchError((e) {
    //   print(e.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Center(
        child: FutureBuilder<HolidayResponse>(
          future: ApiService().getHolidayResponse("MM", "2020"),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const CircularProgressIndicator();
              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data?.holidays.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(snapshot.data!.holidays[index].name),
                        subtitle: Text(snapshot.data!.holidays[index].country),
                      );
                    },
                  );
                }
            }
          },
        ),
      ),
    );
  }
}
