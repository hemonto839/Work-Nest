

class Task {
  final String id;
  final String title;
  final String? description;
  final bool isFinish;
  final DateTime cdt;
  final DateTime fdt;
  final String? attach; // for storage if need

  Task({
    required this.id,
    required this.title,
    this.description,
    required this.isFinish,
    required this.cdt,
    required this.fdt,
    this.attach,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'isFinish': isFinish,
      'cdt': cdt.toIso8601String(),
      'fdt': fdt.toIso8601String(),
      'attach': attach,
    };
  }

  factory Task.fromMap(String id, Map<String, dynamic> mp) {
    return Task(
      id: id,
      title: mp['title'] ?? '',
      description: mp['description'],
      isFinish: mp['isFinish'] ?? false,
      cdt: DateTime.parse(mp['cdt']),
      fdt: DateTime.parse(mp['fdt']),
      attach: mp['attach'],
    );
  }


}