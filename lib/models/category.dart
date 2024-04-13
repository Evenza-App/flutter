class Category {
  final int id;

  final String name;

  final String image;

  Category({
    required this.id,
    required this.name,
    required this.image,
  });

  Category.fromJson(Map<String, dynamic> data)
      : id = int.parse(data['id']),
        name = data['name'],
        image = data['image'];
}
