import 'dart:async';

import 'package:exitinfo/exitinfo.dart';
import 'package:exitinfo/gen/protos/exitinfo.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<ExitInfo>? _exitInfoList;
  String? _err = "";

  @override
  void initState() {
    super.initState();
    initExitInfo();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initExitInfo() async {
    List<ExitInfo>? exitInfoList;
    String? err;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      exitInfoList = await ExitInfoApi.exitinfo;
      exitInfoList.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    } on PlatformException catch (e) {
      exitInfoList = null;
      err = e.message;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _exitInfoList = exitInfoList;
      _err = err;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ExitInfo example app'),
        ),
        body: Center(
          child: _exitInfoList != null
              ? ListView.builder(
                  itemCount: _exitInfoList?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(child: Text("Reason")),
                              Expanded(
                                  flex: 2,
                                  child:
                                      Text(_exitInfoList![index].reason.name)),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(child: Text("Description")),
                              Expanded(
                                  flex: 2,
                                  child:
                                      Text(_exitInfoList![index].description)),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(child: Text("Timestamp")),
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                      DateTime.fromMillisecondsSinceEpoch(
                                              _exitInfoList![index]
                                                  .timestamp
                                                  .toInt())
                                          .toString())),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                )
              : Text(_err!),
        ),
      ),
    );
  }
}
