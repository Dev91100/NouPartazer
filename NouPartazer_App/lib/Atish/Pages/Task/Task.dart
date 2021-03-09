import 'package:flutter/foundation.dart';

class Task
{
  @required
  final String image;

  final String description, locationName, locationAddress, date, time, tag, foodType, status;

 Task
  ({
    this.image,
    this.description,
    this.locationName,
    this.locationAddress,
    this.date, this.time,
    this.tag,
    this.foodType,
    this.status,
  });

}