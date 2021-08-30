library connection;

import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

part 'connection_checker.dart';

class Connection {
  late final ConnectionChecker _connectionChecker;
  late final Connectivity _connectivity;

  Connection() {
    _connectionChecker = ConnectionChecker();
  }

  /// Check real connectivity
  Future<bool> check() async {
    return _connectionChecker.hasConnection;
  }

  Future<ConnectivityResult> checkConnectivity() async {
    return await _connectivity.checkConnectivity();
  }
}
