import 'package:flutter/foundation.dart';

enum Weather{
  Local,
  AC,
  NonAc,
}


enum Affordablility{
  Affordable,
  Pricey,
  Luxurious,
}


class Hotel {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final String duration;
  final Weather NonAc;
  final Affordablility Affordable;

  final bool withAc;
  final bool isDirect;
  final bool isLuxurious;

  const Hotel({
    @required this.id,@required this.categories, @required this.title,
    @required this.imageUrl, @required this.duration , @required this.NonAc, @required this.Affordable,
    @required this.withAc, @required this.isDirect, @required this.isLuxurious,
  });


}