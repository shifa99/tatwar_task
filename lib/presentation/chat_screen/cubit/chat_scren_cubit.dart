import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'chat_scren_state.dart';

class ChatScrenCubit extends Cubit<ChatScrenState> {
  ChatScrenCubit() : super(ChatScrenInitial());
  static ChatScrenCubit getCubit(context) => BlocProvider.of(context);
  List<String> messages = [
    'Hi, Whats You Name Firstname?',
    'I am fina, are you good',
    'Ok, Abdalla Whats Your Lastname?',
    'Front-end Developer',
    'What Categories you will need expert In?',
    'What Categories you will need expert In?',
    'Flutter Developer',
    'Accepted Candidate',
  ];
  List<String> fields = [
    'Security',
    'Development',
    'Scrum master',
    'It',
    'Managerial',
  ];
  List<String> selectedFields = [];
  void addMessage(String message) {
    messages.add(message);
    emit(ChatScrenReload());
  }

  void addField(String field) {
    if (selectedFields.contains(field)) {
      selectedFields.remove(field);
    } else {
      selectedFields.add(field);
    }
    emit(ChatScrenReload());
  }

  void clearSelected() {
    selectedFields.clear();
    emit(ChatScrenReload());
  }
}
