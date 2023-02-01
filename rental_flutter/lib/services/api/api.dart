import 'package:rental_client/rental_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('https://api.aiarsien.click/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

final api = client.user;
