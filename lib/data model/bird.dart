class Bird {
  String name;
  String description;
  String imageURL;

  Bird(
    this.name,
    this.description,
    this.imageURL,
  );

  Bird.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        description = json["description"],
        imageURL = json["imageURL"];
}
