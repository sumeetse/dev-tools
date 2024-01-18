

import 'package:flutter/cupertino.dart';

enum RequestMethod {
  get,
  head,
  post,
  put,
  patch,
  delete,
  options
}

class RequestModel {
  TextEditingController url;
  RequestMethod method;

  RequestModel({required this.url, this.method=RequestMethod.get});
}