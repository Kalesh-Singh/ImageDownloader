class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic>parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }

  // Another constructor syntax (but as clear as the one above though)
//  ImageModel.fromJson(Map<String, dynamic>parsedJson) :
//    id = parsedJson['id'],
//    url = parsedJson['url'],
//    title = parsedJson['title'];
}