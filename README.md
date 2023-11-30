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
print(formated); // 01 Jan 2023 13:00

```

---
| Funtion | Param | Return | Description |
| --- | --- | ---- | ---- |
| `.toWIB()` | - | `DateTime` | change to WIB Timezone |
| `.toWITA()` | - | `DateTime` | change to WITA Timezone |
| `.toWIT()` | - | `DateTime` | change to WIT Timezone |
| `.format(String)` | `String` | `String` | change `IdTimezone`/`DateTime` to `String` with custom format |

