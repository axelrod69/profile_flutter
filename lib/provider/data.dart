import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:core';

class Profile {
  final String userName;
  final String name;
  final String emailId;
  final int timePeriod;
  final int age;
  final String nationality;
  final String number;
  final int streetNumber;
  final String streetName;
  final String city;
  final String country;
  final int postCode;
  final String picture;

  Profile(
      {required this.userName,
      required this.name,
      required this.emailId,
      required this.timePeriod,
      required this.age,
      required this.nationality,
      required this.number,
      required this.streetNumber,
      required this.streetName,
      required this.city,
      required this.country,
      required this.postCode,
      required this.picture});
}

class ProfileProvider with ChangeNotifier {
  Map<String, Profile> _data = {};

  Map<String, Profile> get data {
    return {..._data};
  }

  Future<void> fetchData() async {
    final url = Uri.parse('https://randomuser.me/api/?results=50');
    final response = await http.get(url);
    final extractedData = json.decode(response.body);
    print(extractedData);
//    final result = (extractedData['results'] as List<dynamic>)
//        .map((value) => Profile(
//        userName: value['login']['username'],
//        name: value['name']['first'],
//        emailId: value['email'],
//        timePeriod: value['registered']['age'],
//        age: value['dob']['age'],
//        nationality: value['nat'],
//        number: value['cell'],
//        streetNumber: value['location']['street']['number'],
//        streetName: value['location']['street']['name'],
//        city: value['location']['city'],
//        country: value['location']['country'],
////        postCode: value['location']['postcode'] as int,
//        picture: value['picture']['large']
//    )).toList();
    Map<String, Profile> map = {};
    extractedData.forEach((key, value) => //51:19
        map.putIfAbsent(
            key,
            () => //52:13
                Profile(
                    userName: value['results'].login.username, //54:32
                    name: value['results'].name.first,
                    emailId: value['results'].email,
                    timePeriod: value['results'].registered.age,
                    age: value['results'].dob.age,
                    nationality: value['results'].nat,
                    number: value['results'].cell,
                    streetNumber: value['results'].location.street.number,
                    streetName: value['results'].location.street.name,
                    city: value['results'].location.city,
                    country: value['results'].location.country,
                    postCode: value['results'].location.postcode,
                    picture: value['results'].picture.large)));

    print(_data);

    _data = map;
    notifyListeners();
  }
}
