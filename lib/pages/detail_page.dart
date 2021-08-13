import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:route_and_http_demo/models/passenger.dart';
import 'package:route_and_http_demo/service/api_service.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final PagingController<int, Passenger> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      print("the page key is $pageKey");
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final response = await ApiService().getPassengers(pageKey);

      final bool isLastPage = response.totalPages == pageKey;
      print("is last $isLastPage");
      if (isLastPage) {
        _pagingController.appendLastPage(response.passengers);
      } else {
        final int nextPageKey = pageKey + 1;
        _pagingController.appendPage(response.passengers, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagination Example"),
      ),
      body: Center(
        child: PagedListView<int, Passenger>(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<Passenger>(
            itemBuilder: (context, passenger, index) {
              return ListTile(
                title: Text(passenger.name + ":${passenger.trips}"),
                onTap: () {
                  print("You tapped $index");
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
