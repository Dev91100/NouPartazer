import 'package:flutter/foundation.dart';

class NGOCentres
{
  @required
  final String profilePhoto;
  final String bannerPhoto;
  final String name;
  final String expertise;
  final int size;
  final String address;
  final String phone;
  final String website;
  final String description;

  NGOCentres
  ({
    this.profilePhoto,
    this.bannerPhoto,
    this.name,
    this.expertise,
    this.size,
    this.address,
    this.phone,
    this.website,
    this.description
  });

}