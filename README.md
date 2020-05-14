# exitinfo

Wrapper for ApplicationExitInfo API

## Getting Started

This plugin is wrapper for [ApplicationExitInfo](https://developer.android.com/reference/kotlin/android/app/ApplicationExitInfo#getImportance()) Android API
that was added in API level R. ApplicationExitInfo API describes the information of previous application process's death.

Plugin provided all information that can be retrieved from native android code.

## Usage

Import 
```dart
import 'package:exitinfo/exitinfo.dart';
```

Retrieving list of exit reasons
```dart
List<ExitInfo> exitInfoList = await ExitInfoApi.exitinfo;
```

Getters
```dart
exitInfoList.first.description;
exitInfoList.first.reason;
exitInfoList.first.timestamp;
exitInfoList.first.status;
exitInfoList.first.processname;
exitInfoList.first.packageId;
exitInfoList.first.importance;
exitInfoList.first.packageId;
```

## Example app
![alt text](https://github.com/JankoLancer/flutter_exitinfo/blob/master/site/example.png?raw=true)

## Features and bugs

If you any problem using library or you have any new needs, please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/JankoLancer/flutter_exitinfo/issues