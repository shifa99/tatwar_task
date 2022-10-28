import 'package:enhanced_elearning/core/utill/size_manager.dart';
import 'package:enhanced_elearning/presentation/home_screen/online_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOnlineItems extends StatelessWidget {
  const ListOnlineItems({Key? key, required this.names}) : super(key: key);
  final List<String> names;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115.r,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => OnlineItem(name: names[index]),
          separatorBuilder: (context, index) => SizedBox(
                width: SizeManager.w10,
              ),
          itemCount: names.length),
    );
  }
}
