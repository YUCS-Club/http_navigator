import 'package:json_annotation/json_annotation.dart';
import 'package:route_and_http_demo/models/my_request.dart';

part 'holiday_response.g.dart';

@JsonSerializable()
class HolidayResponse {
  final int status;
  final String warning;
  @JsonKey(name: 'requests')
  final MyRequest myRequest;
  final List<Holiday> holidays;
  const HolidayResponse(
      this.status, this.warning, this.myRequest, this.holidays);

  factory HolidayResponse.fromJson(Map<String, dynamic> json) =>
      _$HolidayResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HolidayResponseToJson(this);
}

@JsonSerializable()
class Holiday {
  final String name;
  final String date;
  final String country;
  final WeekDay weekday;
  const Holiday(this.name, this.date, this.country, this.weekday);

  factory Holiday.fromJson(Map<String, dynamic> json) =>
      _$HolidayFromJson(json);

  Map<String, dynamic> toJson() => _$HolidayToJson(this);
}

@JsonSerializable()
class WeekDay {
  final Day date;
  final Day observed;

  const WeekDay(this.date, this.observed);

  factory WeekDay.fromJson(Map<String, dynamic> json) =>
      _$WeekDayFromJson(json);

  Map<String, dynamic> toJson() => _$WeekDayToJson(this);
}

@JsonSerializable()
class Day {
  final String name;
  final String numeric;
  const Day(this.name, this.numeric);

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);

  Map<String, dynamic> toJson() => _$DayToJson(this);
}
