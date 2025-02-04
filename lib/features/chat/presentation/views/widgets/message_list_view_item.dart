import 'package:flutter/material.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/constants/generated/images.dart';

class MessageListViewItem extends StatefulWidget {
  const MessageListViewItem({
    super.key,
  });

  @override
  State<MessageListViewItem> createState() => _MessageListViewItemState();
}

class _MessageListViewItemState extends State<MessageListViewItem> {
  bool isOther = false;
  bool isFirstMessage = true;
  bool isLastMessage = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultHorizontalPadding,
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: isFirstMessage,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Image.asset(
              AppImages.imagesUserPic,
              height: 34,
              width: 36,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffE8E8E8),
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(16),
                    bottomEnd: Radius.circular(16),
                    bottomStart: Radius.circular(16),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Good Evening!',
                    style: TextStyle(
                      color: Color(0xff5A5A5A),
                    ),
                  ),
                ),
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
    );
  }
}
