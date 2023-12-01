## Indonesian Timezone

Simple package to cange and format `Datetime` or parsing `String` to `Datetime` to Indonesian Timezone (WIB, WITA, WIT)

- change `Datetime` to Indonesian Timezone & format it with easy

```dart
DateTime dateTime = DateTime.now();

// IdTimezone idTimeZone = IdTimezone(date: dateTime, utc: UTC.zero);
IdTimezone idTimeZone = IdTimezone(date: dateTime); // default read UTC±0

// change to Indonesian Time Zone
DateTime? inWIB = idTimeZone.toWIB();

// format to string with custom format
String? inWIBStr = inWIB?.format("dd MMM yyyy HH:mm");

```


- parse from string 

```dart
String dateTimeStr = "2022-01-01 10:00:00";
DateTime? idTz = IdTimezone().parse(dateTimeStr).toWIB();
String? formated = idTz?.format("dd MMM yyyy HH:mm");
print(formated); // 01 Jan 2022 13:00

```

- Function & methods

| Funtion | Param | Return | Description |
| --- | --- | ---- | ---- |
| `.toWIB()` | - | `DateTime` | change to WIB Timezone |
| `.toWITA()` | - | `DateTime` | change to WITA Timezone |
| `.toWIT()` | - | `DateTime` | change to WIT Timezone |
| `.format(String)` | `String` | `String` | change `IdTimezone`/`DateTime` to `String` with custom format |
| `.parse(String)` | `String` datetime | `IdTimezone` | parse `String` to `IdTimezone` class|
| `.setUTC(UTC)` | `UTC` enum | `IdTimezone` | set Timezone in UTC format
| `.fromWIB(DateTime)` | `DateTime` in WIB/UTC+7 | `IdTimezone` | parse `DateTime` WIB/UTC+7 to `IdTimezone` class |
| `.fromWITA(Datetime)` | `DateTime` in WITA/UTC+8 | `IdTimezone` | parse `DateTime` WITA/UTC+8 to `IdTimezone` class |
| `.fromWIT(DateTime)` | `DateTime` in WIT/UTC+9 | `IdTimezone` | parse `DateTime` WIT/UTC+9 to `IdTimezone` class |

