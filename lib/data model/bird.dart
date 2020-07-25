class Bird {
  String name;
  String description;
  String imageURL;
  String movement;

  Bird(
    this.name,
    this.description,
    this.imageURL,
    this.movement,
  );

  Bird.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        description = json["description"],
        imageURL = json["imageURL"],
        movement = json["movement"];
}
