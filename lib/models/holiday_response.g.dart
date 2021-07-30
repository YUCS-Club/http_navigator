// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HolidayResponse _$HolidayResponseFromJson(Map<String, dynamic> json) {
  return HolidayResponse(
    json['status'] as int,
    json['warning'] as String,
    MyRequest.fromJson(json['requests'] as Map<String, dynamic>),
    (json['holidays'] as List<dynamic>)
        .map((e) => Holiday.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$HolidayResponseToJson(HolidayResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'warning': instance.warning,
      'requests': instance.myRequest,
      'holidays': instance.holidays,
    };

Holiday _$HolidayFromJson(Map<String, dynamic> json) {
  return Holiday(
    json['name'] as String,
    json['date'] as String,
    json['country'] as String,
    WeekDay.fromJson(json['weekday'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HolidayToJson(Holiday instance) => <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'country': instance.country,
      'weekday': instance.weekday,
    };

WeekDay _$WeekDayFromJson(Map<String, dynamic> json) {
  return WeekDay(
    Day.fromJson(json['date'] as Map<String, dynamic>),
    Day.fromJson(json['observed'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WeekDayToJson(WeekDay instance) => <String, dynamic>{
      'date': instance.date,
      'observed': instance.observed,
    };

Day _$DayFromJson(Map<String, dynamic> json) {
  return Day(
    json['name'] as String,
    json['numeric'] as String,
  );
}

Map<String, dynamic> _$DayToJson(Day instance) => <String, dynamic>{
      'name': instance.name,
      'numeric': instance.numeric,
    };
