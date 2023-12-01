import 'package:indonesian_timezone/indonesian_time_zone.dart';

void main() {
  DateTime dateTime = DateTime.now();

  // use [utc] to set timezone tobe changed
  // IdTimezone idTimeZone = IdTimezone(date: dateTime, utc: UTC.zero);
  IdTimezone idTimeZone = IdTimezone(date: dateTime); // default read UTC±0

  // change to Indonesian Time Zone
  DateTime? inWIB = idTimeZone.toWIB();
  print(inWIB);
  DateTime? inWITA = idTimeZone.toWITA();
  print(inWITA);
  DateTime? inWIT = idTimeZone.toWIT();
  print(inWIT);

  // format to string with custom format
  String? inWIBStr = inWIB?.format("dd MMM yyyy HH:mm");
  print(inWIBStr);

  // or direct format
  String? inWIBStr2 = idTimeZone.toWIB().format("dd MMM yyyy");
  print(inWIBStr2);

  /* ======================================================================== */
  /* ======================================================================== */

  // parse from string
  String dateTimeStr = "2022-01-01 10:00:00";
  idTimeZone.parse(dateTimeStr);
  print(idTimeZone.toWIB());

  // set utc to UCT+6
  dateTimeStr = "2023-10-01 06:00:00";
  idTimeZone.parse(dateTimeStr).setUTC(UTC.plus06);
  print(idTimeZone.toWIB());

  // and direct format to string
  String? inWITstr = idTimeZone.parse(dateTimeStr).setUTC(UTC.minus12).toWIT().format("dd MMM yyyy");
  print(inWITstr);

  DateTime? idTz = IdTimezone().parse(dateTimeStr).toWIB();
  String? formated = idTz?.format("dd MMM yyyy W HH:mm");
  print(formated);
}
