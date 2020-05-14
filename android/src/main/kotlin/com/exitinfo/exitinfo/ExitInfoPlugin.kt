package com.exitinfo.exitinfo

import android.app.ActivityManager
import android.app.ApplicationExitInfo
import android.content.Context
import android.os.Build
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

/** ExitInfoPlugin */
public class ExitInfoPlugin : FlutterPlugin, MethodCallHandler {

    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel
    private lateinit var applicationContext: Context

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        applicationContext = flutterPluginBinding.applicationContext;
        channel = MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "exitinfo")
        channel.setMethodCallHandler(this);
    }

    // This static function is optional and equivalent to onAttachedToEngine. It supports the old
    // pre-Flutter-1.12 Android projects. You are encouraged to continue supporting
    // plugin registration via this function while apps migrate to use the new Android APIs
    // post-flutter-1.12 via https://flutter.dev/go/android-project-migration.
    //
    // It is encouraged to share logic between onAttachedToEngine and registerWith to keep
    // them functionally equivalent. Only one of onAttachedToEngine or registerWith will be called
    // depending on the user's project. onAttachedToEngine or registerWith must both be defined
    // in the same class.
    companion object {
        @JvmStatic
        fun registerWith(registrar: Registrar) {
            val channel = MethodChannel(registrar.messenger(), "exitinfo")
            channel.setMethodCallHandler(ExitInfoPlugin())
        }
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        if (call.method == "getExitInfo") {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R || Build.VERSION_CODES.R == 10000) {
                val exitInfo = getExitInfo();
                result.success(exitInfo.toByteArray());
            } else {
                result.error("getExitInfo", "ExitInfo requires android R", null);
            }
        } else {
            result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    private fun getExitInfo(): Protos.ExitInfoList {
        val exitReasonList = mutableListOf<Protos.ExitInfo>()
        val activityManager: ActivityManager = applicationContext.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        val exitReasons: List<ApplicationExitInfo> = activityManager.getHistoricalProcessExitReasons(/* packageName = */ null, /* pid = */ 0, /* maxNum = */ 5)
        for (reason in exitReasons) {
            exitReasonList.add(Protos.ExitInfo.newBuilder().setDefiningUid(reason.definingUid).setDescription(reason.description).setImportance(reason.importance).setPackageId(reason.packageUid).setPid(reason.pid).setProcessname(reason.processName).setPss(reason.pss).setRealUid(reason.realUid).setReason(Protos.ExitReason.forNumber(reason.reason)).setRss(reason.rss).setStatus(reason.status).setTimestamp(reason.timestamp).build());
        }

        return Protos.ExitInfoList.newBuilder().addAllInfos(exitReasonList).build();
    }
}
