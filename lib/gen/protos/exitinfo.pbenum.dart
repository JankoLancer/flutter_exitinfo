///
//  Generated code. Do not modify.
//  source: protos/exitinfo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ExitReason extends $pb.ProtobufEnum {
  static const ExitReason REASON_UNKNOWN = ExitReason._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_UNKNOWN');
  static const ExitReason REASON_EXIT_SELF = ExitReason._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_EXIT_SELF');
  static const ExitReason REASON_SIGNALED = ExitReason._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_SIGNALED');
  static const ExitReason REASON_LOW_MEMORY = ExitReason._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_LOW_MEMORY');
  static const ExitReason REASON_CRASH = ExitReason._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_CRASH');
  static const ExitReason REASON_CRASH_NATIVE = ExitReason._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_CRASH_NATIVE');
  static const ExitReason REASON_ANR = ExitReason._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_ANR');
  static const ExitReason REASON_INITIALIZATION_FAILURE = ExitReason._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_INITIALIZATION_FAILURE');
  static const ExitReason REASON_PERMISSION_CHANGE = ExitReason._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_PERMISSION_CHANGE');
  static const ExitReason REASON_EXCESSIVE_RESOURCE_USAGE = ExitReason._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_EXCESSIVE_RESOURCE_USAGE');
  static const ExitReason REASON_USER_REQUESTED = ExitReason._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_USER_REQUESTED');
  static const ExitReason REASON_USER_STOPPED = ExitReason._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_USER_STOPPED');
  static const ExitReason REASON_DEPENDENCY_DIED = ExitReason._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_DEPENDENCY_DIED');
  static const ExitReason REASON_OTHER = ExitReason._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASON_OTHER');

  static const $core.List<ExitReason> values = <ExitReason> [
    REASON_UNKNOWN,
    REASON_EXIT_SELF,
    REASON_SIGNALED,
    REASON_LOW_MEMORY,
    REASON_CRASH,
    REASON_CRASH_NATIVE,
    REASON_ANR,
    REASON_INITIALIZATION_FAILURE,
    REASON_PERMISSION_CHANGE,
    REASON_EXCESSIVE_RESOURCE_USAGE,
    REASON_USER_REQUESTED,
    REASON_USER_STOPPED,
    REASON_DEPENDENCY_DIED,
    REASON_OTHER,
  ];

  static final $core.Map<$core.int, ExitReason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ExitReason? valueOf($core.int value) => _byValue[value];

  const ExitReason._($core.int v, $core.String n) : super(v, n);
}

