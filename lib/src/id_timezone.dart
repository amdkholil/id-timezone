import 'package:intl/intl.dart';

import 'utc.dart';

/// Format Datetime to Indonesian TimeZone (WIB, WIT, WITA)
class IdTimezone {
  DateTime? date;
  UTC utc;

  IdTimezone({this.date, this.utc = UTC.zero});

  /// parse date time string to DateTime
  IdTimezone parse(String dateTimeString) {
    try {
      date = DateTime.parse(dateTimeString);
      return this;
    } catch (e) {
      rethrow;
    }
  }

  /// change to UTC+0
  DateTime? toUTC() {
    try {
      double diff = _diffWithUtc();
      diff = diff.abs();
      int hour = diff.floor();
      int minute = ((diff - hour) * 60).floor();
      if (diff < 0) {
        return date?.add(Duration(hours: hour, minutes: minute));
      } else if (diff > 0) {
        return date?.subtract(Duration(hours: hour, minutes: minute));
      }
      return date;
    } catch (e) {
      rethrow;
    }
  }

  /// change to WIB
  ///
  /// WIB = UTC+7
  DateTime? toWIB() {
    try {
      const int zone = 7;
      double diff = _diffWithUtc();
      double diffAbs = diff.abs();
      int hour = diffAbs.floor();
      int minute = ((diffAbs - hour) * 60).floor();
      if (diff < 0) {
        hour = hour + zone;
        return date?.add(Duration(hours: hour, minutes: minute));
      } else {
        if (diffAbs > zone) {
          hour = hour - zone;
          return date?.subtract(Duration(hours: hour, minutes: minute));
        } else if (diffAbs < zone) {
          hour = zone - hour;
          return date?.add(Duration(hours: hour, minutes: minute));
        }
        return date;
      }
    } catch (e) {
      rethrow;
    }
  }

  /// change to WITA
  /// WITA = UTC+8
  DateTime? toWITA() {
    try {
      const int zone = 8;
      double diff = _diffWithUtc();
      double diffAbs = diff.abs();
      int hour = diffAbs.floor();
      int minute = ((diffAbs - hour) * 60).floor();
      if (diff < 0) {
        hour = hour + zone;
        return date?.add(Duration(hours: hour, minutes: minute));
      } else {
        if (diffAbs > zone) {
          hour = hour - zone;
          return date?.subtract(Duration(hours: hour, minutes: minute));
        } else if (diffAbs < zone) {
          hour = zone - hour;
          return date?.add(Duration(hours: hour, minutes: minute));
        }
        return date;
      }
    } catch (e) {
      rethrow;
    }
  }

  /// change to WIT
  /// WIT = UTC+9
  DateTime? toWIT() {
    try {
      const int zone = 9;
      double diff = _diffWithUtc();
      double diffAbs = diff.abs();
      int hour = diffAbs.floor();
      int minute = ((diffAbs - hour) * 60).floor();
      if (diff < 0) {
        hour = hour + zone;
        return date?.add(Duration(hours: hour, minutes: minute));
      } else {
        if (diffAbs > zone) {
          hour = hour - zone;
          return date?.subtract(Duration(hours: hour, minutes: minute));
        } else if (diffAbs < zone) {
          hour = zone - hour;
          return date?.add(Duration(hours: hour, minutes: minute));
        }
        return date;
      }
    } catch (e) {
      rethrow;
    }
  }

  /// from WIB time
  IdTimezone fromWIB(DateTime wibTime) {
    try {
      return IdTimezone(date: wibTime, utc: UTC.plus07);
    } catch (e) {
      rethrow;
    }
  }

  /// from WITA time
  IdTimezone fromWITA(DateTime witaTime) {
    try {
      return IdTimezone(date: witaTime, utc: UTC.plus08);
    } catch (e) {
      rethrow;
    }
  }

  /// from WIT time
  IdTimezone fromWIT(DateTime witTime) {
    try {
      return IdTimezone(date: witTime, utc: UTC.plus09);
    } catch (e) {
      rethrow;
    }
  }

  /// format Datetime String
  ///
  /// example: [format]  with 'yyyy-MM-dd HH:mm:ss'
  String? format(String? format) {
    try {
      Intl.defaultLocale = 'id_ID';
      if (date == null) {
        return null;
      }
      return DateFormat(format).format(date!);
    } catch (e) {
      rethrow;
    }
  }

  /// UTC setter
  ///
  /// set UTC value
  IdTimezone setUTC(UTC utc) {
    try {
      this.utc = utc;
      return this;
    } catch (e) {
      rethrow;
    }
  }

  /// helper to get diff datetime with UTC
  double _diffWithUtc() {
    switch (utc) {
      case UTC.zero:
        return 0;
      case UTC.plus01:
        return 1;
      case UTC.plus02:
        return 2;
      case UTC.plus03:
        return 3;
      case UTC.plus03_30:
        return 3.5;
      case UTC.plus04:
        return 4;
      case UTC.plus04_30:
        return 4.5;
      case UTC.plus05:
        return 5;
      case UTC.plus05_30:
        return 5.5;
      case UTC.plus05_45:
        return 5.75;
      case UTC.plus06:
        return 6;
      case UTC.plus06_30:
        return 6.5;
      case UTC.plus07:
        return 7;
      case UTC.plus08:
        return 8;
      case UTC.plus08_45:
        return 8.75;
      case UTC.plus09:
        return 9;
      case UTC.plus09_30:
        return 9.5;
      case UTC.plus10:
        return 10;
      case UTC.plus10_30:
        return 10.5;
      case UTC.plus11:
        return 11;
      case UTC.plus12:
        return 12;
      case UTC.plus12_45:
        return 12.75;
      case UTC.plus13:
        return 13;
      case UTC.plus14:
        return 14;
      case UTC.minus01:
        return -1;
      case UTC.minus02:
        return -2;
      case UTC.minus03:
        return -3;
      case UTC.minus03_30:
        return -3.5;
      case UTC.minus04:
        return -4;
      case UTC.minus05:
        return -5;
      case UTC.minus06:
        return -6;
      case UTC.minus07:
        return -7;
      case UTC.minus08:
        return -8;
      case UTC.minus09:
        return -9;
      case UTC.minus09_30:
        return -9.5;
      case UTC.minus10:
        return -10;
      case UTC.minus11:
        return -11;
      case UTC.minus12:
        return -12;
    }
  }
}
