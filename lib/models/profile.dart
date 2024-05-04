import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/models/event_detail.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class Profile {
  final int id;
  final String name;
  final String address;
  final int phone;

  Profile(
      {required this.id,
      required this.name,
      required this.address,
      required this.phone});
  factory Profile.fromJson(Map<String, dynamic> data) {
    final id = int.parse(data['id'].toString());
    final phone = int.parse(data['phone'].toString());
    final name = data['name'];
    final address = data['address'];
    return Profile(id: id, name: name, address: address, phone: phone);
  }
}
