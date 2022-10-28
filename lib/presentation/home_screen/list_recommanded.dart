import 'package:enhanced_elearning/core/utill/size_manager.dart';
import 'package:enhanced_elearning/domain/entities/person.dart';
import 'package:enhanced_elearning/presentation/home_screen/recommanded_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListRecommanded extends StatelessWidget {
  const ListRecommanded({Key? key,required this.people}) : super(key: key);
  final List<Person> people;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.separated(
           scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => RecommandedItem(person: people[index],index:index),
          separatorBuilder: (context,index)=>SizedBox(width: SizeManager.w10,),
          itemCount: people.length),
    );
  }
}
