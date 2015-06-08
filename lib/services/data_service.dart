library data_service;

import 'dart:html';
import 'package:json_object/json_object.dart';

// Example of working with a JSON REST API, #JsonRestApi
class DataService {
  JsonObject data;

  void loadData() {
    var url = "https://www.googleapis.com/books/v1/volumes?q=isbn:0747532699";

    // call the web server asynchronously
    HttpRequest.getString(url).then(onDataLoaded);
  }

  void onDataLoaded(String responseText) {
    data = new JsonObject.fromJsonString(responseText);
  }

  DataService() {
    loadData();
  }
}