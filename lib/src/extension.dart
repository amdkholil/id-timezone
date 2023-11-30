import 'package:intl/intl.dart';

extension Formatter on DateTime? {
  String? format(String format) {
    try {
      if (this != null) {
        return DateFormat(format).format(this!);
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
