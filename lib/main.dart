import 'package:flutter/material.dart';
import 'package:network_request/data_service.dart';
// import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _dataService = DataService();
  String _response;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Builder(builder: (_) {
              if (_response != null) {
                return Text(_response);
              } else {
                return ElevatedButton(
                    onPressed: _makeRequest, child: Text('Make Request'));
              }
            }),
          ),
        ),
      ),
    );
  }

  void _makeRequest() async {
    final response = await _dataService.makeRequest();
    setState(() => _response = response);
  }
}
