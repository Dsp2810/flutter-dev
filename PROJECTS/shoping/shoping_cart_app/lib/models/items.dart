class Item {
  final String id;
  final String name;
  final String category;
  final int quantity;
  final int price;

  Item({
    required this.id,
    required this.name,
    required this.category,
    required this.quantity,
    required this.price,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['_id'],
      name: json['name'],
      category: json['category'],
      quantity: json['quantity'],
      price: json['price'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'category': category,
      'quantity': quantity,
      'price': price,
    };
  }
}
