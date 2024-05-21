class FoodModels {
  String? id;
  String? name;
  String? imageUrl;
  double? price; // Changed to double?
  double? totalPrice; // Changed to double?
  String? phone;
  String? credit;
  String? password;

  FoodModels({
    this.name,
    this.imageUrl,
    this.id,
    this.price,
    this.totalPrice,
    this.phone,
    this.credit,
    this.password,
  });

  factory FoodModels.fromJson(Map<String, dynamic> json) => FoodModels(
        name: json['name'] as String?,
        id: json['_id'] as String?,
        imageUrl: json['imageUrl'] as String?,
        // Handle conversion to double
        price: json['price'] != null ? (json['price'] as num).toDouble() : null,
        totalPrice: json['totalPrice'] != null
            ? (json['totalPrice'] as num).toDouble()
            : null,
        phone: json['phone'] as String?,
        credit: json['credit'] as String?,
        password: json['password'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        '_id': id,
        'imageUrl': imageUrl,
        'price': price,
        'totalPrice': totalPrice,
        'phone': phone,
        'credit': credit,
        'password': password,
      };
}
