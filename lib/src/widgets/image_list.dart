import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, int index) {
          return buildImageContainer(images[index]);
        },
    );
  }

  Widget buildImageContainer(ImageModel image) {
    return Container(
      margin: EdgeInsets.all(19.0),
      padding: EdgeInsets.all(19.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Image.network(image.url),
    );
  }
}