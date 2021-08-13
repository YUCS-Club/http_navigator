import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:route_and_http_demo/models/passenger.dart';
import 'package:route_and_http_demo/service/api_service.dart';

class DetailPage extends StatefulWidget {
  final int id;
  const DetailPage(this.id, {Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final PagingController<int, Passenger> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final response = await ApiService().getPassengers(pageKey);

      final bool isLastPage = response.totalPages == pageKey;
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
        title: Text(widget.id.toString()),
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
