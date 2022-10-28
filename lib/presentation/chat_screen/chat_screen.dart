import 'package:enhanced_elearning/core/utill/color_manager.dart';
import 'package:enhanced_elearning/core/utill/helper_methods.dart';
import 'package:enhanced_elearning/core/utill/size_manager.dart';
import 'package:enhanced_elearning/core/widgets/default_text_field.dart';
import 'package:enhanced_elearning/presentation/chat_screen/bubble_receive.dart';
import 'package:enhanced_elearning/presentation/chat_screen/cubit/chat_scren_cubit.dart';
import 'package:enhanced_elearning/presentation/chat_screen/list_of_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bubble_send.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          HelperMethods.closeKeyboard();
          return true;
        },
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: BlocProvider(
              create: (context) => ChatScrenCubit(),
              child: BlocBuilder<ChatScrenCubit, ChatScrenState>(
                builder: (context, state) {
                  ChatScrenCubit cubit = ChatScrenCubit.getCubit(context);
                  return Column(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            HelperMethods.closeKeyboard();
                          },
                          child: SingleChildScrollView(
                            reverse: true,
                            controller: scrollController,
                            child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              itemBuilder: (context, index) => index % 2 == 0
                                  ? index == 4
                                      ? ListOfFields(chatScrenCubit: cubit)
                                      : BubbleSend(
                                          message: cubit.messages[index])
                                  : BubbleRecieve(
                                      message: cubit.messages[index]),
                              separatorBuilder: (context, index) => SizedBox(
                                height: SizeManager.h20,
                              ),
                              itemCount: cubit.messages.length,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeManager.h5,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Form(
                          key: formkey,
                          child: Row(
                            children: [
                              Expanded(
                                child: defaultTextField(
                                    fillColor: ColorManager.grayColor,
                                    controller: controller,
                                    prefix: const Icon(
                                      Icons.language,
                                      color: Colors.grey,
                                    ),
                                    suffix: const Icon(
                                      Icons.filter_frames,
                                      color: Colors.grey,
                                    ),
                                    hint: 'Type something...',
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please enter message to send It';
                                      }
                                      return null;
                                    },
                                    type: TextInputType.text),
                              ),
                              SizedBox(
                                width: SizeManager.w10,
                              ),
                              InkWell(
                                onTap: () {
                                  if (formkey.currentState!.validate()) {
                                    cubit.addMessage(controller.text);
                                    scrollController.jumpTo(
                                      0,
                                    );
                                    controller.clear();
                                  }
                                },
                                child: Icon(
                                  Icons.send_rounded,
                                  color: ColorManager.primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
