import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Storage {
  final storage = const FlutterSecureStorage();

  start(List<String> keys) async {
    try {
     for(int r=0; r<keys.length;r++){
      await storage.read(key: keys[r])
      await storage.write(key: keys[r], value: '');
    }
    } 
    catch (e) {
      return '';
    }
  }

  Future<bool> write(String name, String data) async {
    try {
      await storage.write(key: name, value: data).then((value) async => {
        
          });
      return true;
    } 
    catch (e) {
      return false;
    }
  }

  Future<String> read(String name) async {
     try {
      String? data = await storage.read(key: name);
      return data ?? '';
    } 
    catch (e) {
      return '';
    }
   
  }
}
