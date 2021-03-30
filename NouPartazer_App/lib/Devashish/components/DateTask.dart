import 'package:flutter/material.dart';
import 'package:time_range_picker/time_range_picker.dart';

class Task {
  String name;
  DateTime date;
  TimeRange timeRange;

  Task({this.name, this.date, this.timeRange});
}