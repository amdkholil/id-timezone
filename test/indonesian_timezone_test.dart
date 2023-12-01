import 'package:indonesian_timezone/indonesian_timezone.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    DateTime now = DateTime.now();
    var idTimezone = IdTimezone(date: now);

    setUp(() {
      // Additional setup goes here.
    });

    test('WIB Test Null', () {
      expect(idTimezone.toWIB() != null, isTrue);
    });
    test('WIB Test Null 2', () {
      var idTimezone2 = IdTimezone();
      expect(idTimezone2.toWIB() == null, isTrue);
    });
    test('WITA Test Null', () {
      expect(idTimezone.toWITA() != null, isTrue);
    });
    test('WIT Test Null', () {
      expect(idTimezone.toWIT() != null, isTrue);
    });
  });
}
