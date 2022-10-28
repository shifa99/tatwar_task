import 'package:enhanced_elearning/core/utill/size_manager.dart';
import 'package:enhanced_elearning/domain/entities/feature.dart';
import 'package:enhanced_elearning/presentation/home_screen/default_list_tile.dart';
import 'package:flutter/cupertino.dart';

class ListFeatures extends StatelessWidget {
  const ListFeatures({Key? key, required this.features}) : super(key: key);
  final List<Feature> features;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) =>
            DefaultListTile(feature: features[index]),
        separatorBuilder: (context, index) => SizedBox(
              height: SizeManager.h5,
            ),
        itemCount: features.length);
  }
}
