import 'package:flutter/foundation.dart';

class ProductHP {
  final String id;
  final String title;
  final String description;
  final String author;
  final String authorImage;
  final String imageUrl;
  final int writtenOn;

  ProductHP({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.author,
    @required this.authorImage,
    @required this.imageUrl,
    @required this.writtenOn,
  });
}
