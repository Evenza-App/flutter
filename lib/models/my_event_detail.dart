import 'package:evenza/helpers/api/api_helper.dart';

class Photographer {
  String name;
  String image;

  Photographer({required this.name, required this.image});

  factory Photographer.fromJson(Map<String, dynamic> json) {
    return Photographer(
      name: json['name'] as String,
      image: json['image']
          .toString()
          .replaceFirst('http://localhost:8000', ApiHelper.domain),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}

class Payment {
  double totalPrice;
  String message;

  Payment({required this.totalPrice, required this.message});

  factory Payment.fromJson(Map<String, dynamic> json) {
    return Payment(
      totalPrice: json['total_price'].toDouble(),
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_price'] = this.totalPrice.toDouble();
    data['message'] = this.message;
    return data;
  }
}

class Buffet {
  int id;
  String name;
  String ingredients;
  String type;
  String image;
  String category;

  Buffet(
      {required this.id,
      required this.name,
      required this.ingredients,
      required this.type,
      required this.image,
      required this.category});

  factory Buffet.fromJson(Map<String, dynamic> json) {
    return Buffet(
      id: json['id'],
      name: json['name'],
      ingredients: json['ingredients'],
      type: json['type'],
      image: json['image'],
      category: json['category'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['ingredients'] = this.ingredients;
    data['type'] = this.type;
    data['image'] = this
        .image
        .toString()
        .replaceFirst('http://localhost:8000', ApiHelper.domain);
    data['category'] = this.category;
    return data;
  }
}

class Details {
  String name;
  String value;

  Details({required this.name, required this.value});

  factory Details.fromJson(Map<String, dynamic> json) {
    return Details(
      name: json['name'],
      value: json['value'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['value'] = this.value;
    return data;
  }
}

class MyEventDetails {
  int id;
  String? image;
  String startTime;
  String endTime;
  String date;
  String status;
  String location;
  int numberOfPeople;
  String event;
  Payment? payment;
  Photographer photographer;
  List<Buffet> buffet;
  List<Details> details;

  MyEventDetails({
    required this.id,
    required this.image,
    required this.startTime,
    required this.endTime,
    required this.date,
    required this.status,
    required this.location,
    required this.numberOfPeople,
    required this.event,
    required this.photographer,
    required this.payment,
    required this.buffet,
    required this.details,
  });

  factory MyEventDetails.fromJson(Map<String, dynamic> json) {
    return MyEventDetails(
      id: json['id'],
      image: json['image']
          ?.toString()
          .replaceFirst('http://localhost:8000', ApiHelper.domain),
      startTime: json['start_time'],
      endTime: json['end_time'],
      date: json['date'],
      status: json['status'],
      location: json['location'],
      numberOfPeople: json['number_of_people'],
      event: json['event'],
      photographer: Photographer.fromJson(json['photographer']),
      payment:
          json['payment'] != null ? Payment.fromJson(json['payment']) : null,
      buffet: (json['buffet'] as List)
          .map((item) => Buffet.fromJson(item))
          .toList(),
      details: (json['details'] as List)
          .map((item) => Details.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['date'] = this.date;
    data['status'] = this.status;
    data['location'] = this.location;
    data['number_of_people'] = this.numberOfPeople;
    data['event'] = this.event;
    data['photographer'] = this.photographer.toJson();
    data['payment'] = this.payment?.toJson();
    data['buffet'] = this.buffet.map((item) => item.toJson()).toList();
    data['details'] = this.details.map((item) => item.toJson()).toList();
    return data;
  }
}
