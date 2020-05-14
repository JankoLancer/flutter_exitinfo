#import "ExitInfoPlugin.h"
#if __has_include(<exitinfo/exitinfo-Swift.h>)
#import <exitinfo/exitinfo-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "exitinfo-Swift.h"
#endif

@implementation ExitInfoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftExitInfoPlugin registerWithRegistrar:registrar];
}
@end
