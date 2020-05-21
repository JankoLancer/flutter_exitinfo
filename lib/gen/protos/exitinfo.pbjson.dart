///
//  Generated code. Do not modify.
//  source: protos/exitinfo.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ExitReason$json = const {
  '1': 'ExitReason',
  '2': const [
    const {'1': 'REASON_UNKNOWN', '2': 0},
    const {'1': 'REASON_EXIT_SELF', '2': 1},
    const {'1': 'REASON_SIGNALED', '2': 2},
    const {'1': 'REASON_LOW_MEMORY', '2': 3},
    const {'1': 'REASON_CRASH', '2': 4},
    const {'1': 'REASON_CRASH_NATIVE', '2': 5},
    const {'1': 'REASON_ANR', '2': 6},
    const {'1': 'REASON_INITIALIZATION_FAILURE', '2': 7},
    const {'1': 'REASON_PERMISSION_CHANGE', '2': 8},
    const {'1': 'REASON_EXCESSIVE_RESOURCE_USAGE', '2': 9},
    const {'1': 'REASON_USER_REQUESTED', '2': 10},
    const {'1': 'REASON_USER_STOPPED', '2': 11},
    const {'1': 'REASON_DEPENDENCY_DIED', '2': 12},
    const {'1': 'REASON_OTHER', '2': 13},
  ],
};

const ExitInfoList$json = const {
  '1': 'ExitInfoList',
  '2': const [
    const {'1': 'infos', '3': 1, '4': 3, '5': 11, '6': '.ExitInfo', '10': 'infos'},
  ],
};

const ExitInfo$json = const {
  '1': 'ExitInfo',
  '2': const [
    const {'1': 'definingUid', '3': 1, '4': 1, '5': 5, '10': 'definingUid'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'importance', '3': 3, '4': 1, '5': 5, '10': 'importance'},
    const {'1': 'packageId', '3': 4, '4': 1, '5': 5, '10': 'packageId'},
    const {'1': 'pid', '3': 5, '4': 1, '5': 5, '10': 'pid'},
    const {'1': 'processname', '3': 6, '4': 1, '5': 9, '10': 'processname'},
    const {'1': 'pss', '3': 7, '4': 1, '5': 3, '10': 'pss'},
    const {'1': 'realUid', '3': 8, '4': 1, '5': 5, '10': 'realUid'},
    const {'1': 'reason', '3': 9, '4': 1, '5': 14, '6': '.ExitReason', '10': 'reason'},
    const {'1': 'rss', '3': 10, '4': 1, '5': 3, '10': 'rss'},
    const {'1': 'status', '3': 11, '4': 1, '5': 5, '10': 'status'},
    const {'1': 'timestamp', '3': 12, '4': 1, '5': 3, '10': 'timestamp'},
  ],
};
