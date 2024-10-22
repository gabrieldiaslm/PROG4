//arquivo temporário

class Category {
  final int id;
  final String title;
  final String color;

  const Category({
    required this.id,
    required this.title,
    required this.color,
  });
}

void main() {
  final c = Category(id: 1, title: 'Italiano', color: "purple");

  print("$c");
}
