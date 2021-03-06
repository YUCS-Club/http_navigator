import 'package:dio/dio.dart';
import 'package:route_and_http_demo/models/holiday_response.dart';
import 'package:route_and_http_demo/models/passengers_response.dart';

class ApiService {
  final String api_key = "06452d30-2aa2-43be-808d-e5d69b4bc3bd";
  // & query parameters
  final String route =
      "https://api.instantwebtools.net/v1/passenger?page=3&size=30";

  Future<HolidayResponse> getHolidayResponse(
      String country, String year) async {
    try {
      final Response response = await Dio()
          .get('https://holidayapi.com/v1/holidays', queryParameters: {
        'key': api_key,
        'country': country,
        'year': year,
      });
      print("The response is $response");
      print("The data is ${response.data}");

      return HolidayResponse.fromJson(response.data);
    } on DioError catch (e) {
      print('the res is ' + e.toString());
      throw Exception("The error code is ${e.response?.statusCode}");
    }
  }

  Future<PassengersResponse> getPassengers(int page) async {
    try {
      final Response response = await Dio().get(
          'https://api.instantwebtools.net/v1/passenger',
          queryParameters: {
            'page': page,
            'size': 30,
          });
      print("The response is $response");
      print("The data is ${response.data}");

      return PassengersResponse.fromJson(response.data);
    } on DioError catch (e) {
      print('the res is ' + e.toString());
      throw Exception("The error code is ${e.response?.statusCode}");
    }
  }
}
