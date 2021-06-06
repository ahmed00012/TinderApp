

import 'package:cloud_firestore/cloud_firestore.dart';

class User{

  String name;
  String uid;
  String gender;
  String interestedIn;
  String photo;
  Timestamp age;
  GeoPoint location;

  User({this.name, this.uid, this.gender, this.interestedIn, this.photo,
      this.age, this.location});
}