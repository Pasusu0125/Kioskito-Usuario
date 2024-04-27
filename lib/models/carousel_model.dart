class Menu {
  final int id;
  final String image;
  final String name;
  final String description;
  final String value;

  const Menu({
    required this.id,
    required this.image,
    required this.name,
    required this.description,
    required this.value,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        description: json["description"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "description": description,
        "value": value,
      };
  Menu copy() => Menu(
        id: id,
        image: image,
        name: name,
        description: description,
        value: value,
      );
}
