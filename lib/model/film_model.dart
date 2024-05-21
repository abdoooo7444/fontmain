class FilmModel {
  String? id;
  String? name;
  String? title;
  int? price;
  String? kind;
  String? description;

  FilmModel({
    this.id,
    this.name,
    this.title,
    this.price,
    this.kind,
    this.description,
  });

  factory FilmModel.fromJson(Map<String, dynamic> json) => FilmModel(
        id: json['_id'] as String?,
        name: json['name'] as String?,
        title: json['title'] as String?,
        price: json['price'] as int?,
        kind: json['kind'] as String?,
        description: json['description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'name': name,
        'title': title,
        'price': price,
        'kind': kind,
        'description': description,
      };
}
