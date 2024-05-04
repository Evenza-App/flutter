class EventDetail {
  final int id;

  final String name;

  final String type;

  final List<String> options;

  final bool isrequired;

  EventDetail({
    required this.id,
    required this.name,
    required this.type,
    required this.isrequired,
    required this.options,
  });
  factory EventDetail.fromJson(Map<String, dynamic> data) {
    final id = int.parse(data['id'].toString());
    final name = data['name'];
    final type = data['type'];
    final options = (data['options'] as List)
        .map((item) => item['name'] as String)
        .toList();
    final isrequired = data['is_required'];

    return EventDetail(
        id: id,
        name: name,
        type: type,
        isrequired: isrequired,
        options: options);
  }
}
