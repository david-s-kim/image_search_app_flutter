import '../../domain/model/time.dart';
import '../dto/time_dto.dart';

extension ToTime on TimeDto {
  Time toTime() {
    return Time(
      timezone: timezone.toString(),
      unixTime: unixtime!.toInt(),
      utcDateTime: DateTime.fromMillisecondsSinceEpoch(unixtime!.toInt()),
      utcOffset: utcOffset!,
    );
  }
}
