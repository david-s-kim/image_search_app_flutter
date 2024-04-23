import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time.freezed.dart';
part 'time.g.dart';

@freezed
class Time with _$Time {
  const factory Time({
    required String timezone,
    required int unixTime,
    required DateTime utcDateTime,
    required String utcOffset,
  }) = _Time;



  factory Time.fromJson(Map<String, dynamic> json) =>
      _$TimeFromJson(json);
}