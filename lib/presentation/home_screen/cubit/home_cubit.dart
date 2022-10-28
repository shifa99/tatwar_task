import 'package:bloc/bloc.dart';
import 'package:enhanced_elearning/core/utill/image_manager.dart';
import 'package:enhanced_elearning/domain/entities/feature.dart';
import 'package:enhanced_elearning/domain/entities/person.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  List<Feature> features = [
    Feature(image: ImageManager.group114, subTitle: '23 Experts', title: 'Information Technology'),
    Feature(image: ImageManager.group115, subTitle: '23 Experts', title: 'Supply Chain'),
    Feature(image: ImageManager.group116, subTitle: '23 Experts', title: 'Security'),
    Feature(image: ImageManager.group117, subTitle: '23 Experts', title: 'HR'),
    Feature(image: ImageManager.group118, subTitle: '23 Experts', title: 'Immigration'),
    Feature(image: ImageManager.group119, subTitle: '23 Experts', title: 'Translation'),



  ];
  List<String> names = [
    'Ahmed',
    'Ashraf',
    'Halmy',
    'Hossam',
    'Ali',
    'Hazam',
    'Sayed'
  ];
  List<Person> Recommandedpeople = [
    Person(
      id: 1,
      name: 'Kareem Adel',
      rate: 5.0,
      specialization: 'Development',
      image: ImageManager.person1,
    ),
    Person(
        id: 2,
        name: 'Ahmed Ashraf',
        rate: 4.9,
        specialization: 'Management',
        image: ImageManager.person2),
  ];
  void toggleFavRecommanded(int index) {
    Recommandedpeople[index].fav = !Recommandedpeople[index].fav;
    emit(HomeReload());
  }
}
