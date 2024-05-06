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
  String photographer;
  List<Buffet> buffet;
  List<Details> details;

  MyEventDetails({
    required this.id,
    this.image,
    required this.startTime,
    required this.endTime,
    required this.date,
    required this.status,
    required this.location,
    required this.numberOfPeople,
    required this.event,
    required this.photographer,
    required this.buffet,
    required this.details,
  });

  factory MyEventDetails.fromJson(Map<String, dynamic> json) {
    return MyEventDetails(
      id: json['id'],
      image: json['image'],
      startTime: json['start_time'],
      endTime: json['end_time'],
      date: json['date'],
      status: json['status'],
      location: json['location'],
      numberOfPeople: json['number_of_people'],
      event: json['event'],
      photographer: json['photographer'],
      buffet: (json['buffet'] as List)
          .map((item) => Buffet.fromJson(item))
          .toList(),
      details: (json['details'] as List)
          .map((item) => Details.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['start_time'] = startTime;
    data['end_time'] = endTime;
    data['date'] = date;
    data['status'] = status;
    data['location'] = location;
    data['number_of_people'] = numberOfPeople;
    data['event'] = event;
    data['photographer'] = photographer;
    data['buffet'] = buffet.map((item) => item.toJson()).toList();
    data['details'] = details.map((item) => item.toJson()).toList();
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

  Buffet({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.type,
    required this.image,
    required this.category,
  });

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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['ingredients'] = ingredients;
    data['type'] = type;
    data['image'] = image;
    data['category'] = category;
    return data;
  }
}

class Details {
  String name;
  String value;

  Details({
    required this.name,
    required this.value,
  });

  factory Details.fromJson(Map<String, dynamic> json) {
    return Details(
      name: json['name'],
      value: json['value'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}