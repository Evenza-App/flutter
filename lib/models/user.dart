class User {
  int id;
  String name;
  String address;
  String phone;
  String email;
  String? password;

  User({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
    this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      phone: json['phone'],
      email: json['email'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'phone': phone,
      'email': email,
      'password': password,
    };
  }
}
