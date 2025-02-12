import 'package:flutter/material.dart';

import '../../../../../core/constants/generated/images.dart';

class MessageListViewItem extends StatelessWidget {
  const MessageListViewItem({
    super.key,
    required this.isOther,
    required this.isFirstMessage,
    required this.isLastMessage,
  });
  final bool isOther;
  final bool isFirstMessage;
  final bool isLastMessage;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isOther
          ? AlignmentDirectional.centerStart
          : AlignmentDirectional.centerEnd,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: isOther && isFirstMessage,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: Image.asset(
                AppImages.userPic,
                height: 34,
                width: 36,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        color: isOther
                            ? const Color(0xffE8E8E8)
                            : const Color(0xFFE2F5ED),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: isOther
                                ? Colors.transparent
                                : const Color(0xFF08B783),
                          ),
                          borderRadius: BorderRadiusDirectional.only(
                            topEnd: isOther
                                ? const Radius.circular(16)
                                : Radius.zero,
                            topStart: isOther
                                ? Radius.zero
                                : const Radius.circular(16),
                            bottomEnd: const Radius.circular(16),
                            bottomStart: const Radius.circular(16),
                          ),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          'Good Evening!',
                          //maxLines: 5,

                          style: TextStyle(
                            color: Color(0xff5A5A5A),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: isLastMessage,
                  child: const Text(
                    '8:29 pm',
                    style: TextStyle(
                      color: Color(0xff717171),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
