import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/faq_model.dart';

Future<String> _loadAddressAsset() async {
  return await rootBundle.loadString('assets/address.json');
}

Future loadAddress() async {
  String jsonAddress = await _loadAddressAsset();
  final jsonResponse = json.decode(jsonAddress);
  faq_model faq = new faq_model.fromJson(jsonResponse);
  print(faq.faq?[0].answer);
}
