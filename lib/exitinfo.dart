import 'dart:async';
import 'dart:typed_data';

import 'package:exitinfo/gen/protos/exitinfo.pb.dart';
import 'package:flutter/services.dart';

export 'gen/protos/exitinfo.pb.dart';

class ExitInfoApi {
  static const MethodChannel _channel = const MethodChannel('exitinfo');

  static Future<List<ExitInfo>> get exitinfo async {
    final Uint8List rawData = await _channel.invokeMethod('getExitInfo');
    ExitInfoList infoList = ExitInfoList.fromBuffer(rawData);
    return infoList.infos;
  }
}
