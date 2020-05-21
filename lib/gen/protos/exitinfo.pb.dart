///
//  Generated code. Do not modify.
//  source: protos/exitinfo.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'exitinfo.pbenum.dart';

export 'exitinfo.pbenum.dart';

class ExitInfoList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ExitInfoList', createEmptyInstance: create)
    ..pc<ExitInfo>(1, 'infos', $pb.PbFieldType.PM, subBuilder: ExitInfo.create)
    ..hasRequiredFields = false;

  ExitInfoList._() : super();
  factory ExitInfoList() => create();
  factory ExitInfoList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExitInfoList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ExitInfoList clone() => ExitInfoList()..mergeFromMessage(this);
  ExitInfoList copyWith(void Function(ExitInfoList) updates) =>
      super.copyWith((message) => updates(message as ExitInfoList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExitInfoList create() => ExitInfoList._();
  ExitInfoList createEmptyInstance() => create();
  static $pb.PbList<ExitInfoList> createRepeated() => $pb.PbList<ExitInfoList>();
  @$core.pragma('dart2js:noInline')
  static ExitInfoList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExitInfoList>(create);
  static ExitInfoList _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ExitInfo> get infos => $_getList(0);
}

class ExitInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ExitInfo', createEmptyInstance: create)
    ..a<$core.int>(1, 'definingUid', $pb.PbFieldType.O3, protoName: 'definingUid')
    ..aOS(2, 'description')
    ..a<$core.int>(3, 'importance', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'packageId', $pb.PbFieldType.O3, protoName: 'packageId')
    ..a<$core.int>(5, 'pid', $pb.PbFieldType.O3)
    ..aOS(6, 'processname')
    ..aInt64(7, 'pss')
    ..a<$core.int>(8, 'realUid', $pb.PbFieldType.O3, protoName: 'realUid')
    ..e<ExitReason>(9, 'reason', $pb.PbFieldType.OE,
        defaultOrMaker: ExitReason.REASON_UNKNOWN, valueOf: ExitReason.valueOf, enumValues: ExitReason.values)
    ..aInt64(10, 'rss')
    ..a<$core.int>(11, 'status', $pb.PbFieldType.O3)
    ..aInt64(12, 'timestamp')
    ..hasRequiredFields = false;

  ExitInfo._() : super();
  factory ExitInfo() => create();
  factory ExitInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExitInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ExitInfo clone() => ExitInfo()..mergeFromMessage(this);
  ExitInfo copyWith(void Function(ExitInfo) updates) => super.copyWith((message) => updates(message as ExitInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExitInfo create() => ExitInfo._();
  ExitInfo createEmptyInstance() => create();
  static $pb.PbList<ExitInfo> createRepeated() => $pb.PbList<ExitInfo>();
  @$core.pragma('dart2js:noInline')
  static ExitInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExitInfo>(create);
  static ExitInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get definingUid => $_getIZ(0);
  @$pb.TagNumber(1)
  set definingUid($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDefiningUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDefiningUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get importance => $_getIZ(2);
  @$pb.TagNumber(3)
  set importance($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasImportance() => $_has(2);
  @$pb.TagNumber(3)
  void clearImportance() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get packageId => $_getIZ(3);
  @$pb.TagNumber(4)
  set packageId($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPackageId() => $_has(3);
  @$pb.TagNumber(4)
  void clearPackageId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get pid => $_getIZ(4);
  @$pb.TagNumber(5)
  set pid($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPid() => $_has(4);
  @$pb.TagNumber(5)
  void clearPid() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get processname => $_getSZ(5);
  @$pb.TagNumber(6)
  set processname($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasProcessname() => $_has(5);
  @$pb.TagNumber(6)
  void clearProcessname() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get pss => $_getI64(6);
  @$pb.TagNumber(7)
  set pss($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasPss() => $_has(6);
  @$pb.TagNumber(7)
  void clearPss() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get realUid => $_getIZ(7);
  @$pb.TagNumber(8)
  set realUid($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasRealUid() => $_has(7);
  @$pb.TagNumber(8)
  void clearRealUid() => clearField(8);

  @$pb.TagNumber(9)
  ExitReason get reason => $_getN(8);
  @$pb.TagNumber(9)
  set reason(ExitReason v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasReason() => $_has(8);
  @$pb.TagNumber(9)
  void clearReason() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get rss => $_getI64(9);
  @$pb.TagNumber(10)
  set rss($fixnum.Int64 v) {
    $_setInt64(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasRss() => $_has(9);
  @$pb.TagNumber(10)
  void clearRss() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get status => $_getIZ(10);
  @$pb.TagNumber(11)
  set status($core.int v) {
    $_setSignedInt32(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasStatus() => $_has(10);
  @$pb.TagNumber(11)
  void clearStatus() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get timestamp => $_getI64(11);
  @$pb.TagNumber(12)
  set timestamp($fixnum.Int64 v) {
    $_setInt64(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasTimestamp() => $_has(11);
  @$pb.TagNumber(12)
  void clearTimestamp() => clearField(12);
}
