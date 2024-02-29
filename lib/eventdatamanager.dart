import 'package:flutter/material.dart';

class Event {

  String? title;
  String? description;
  DateTime? datetime;
  double? duration;

  Event (String title, String description, DateTime datetime, double duration) {
    this.title = title;
    this.description = description;
    this.datetime = datetime;
    this.duration = duration;
  }
}