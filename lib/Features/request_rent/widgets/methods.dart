import 'package:flutter/material.dart';
import 'package:ride_share/Features/request_rent/widgets/method_component.dart';
import 'package:ride_share/core/constants/generated/images.dart';

class Methods extends StatelessWidget {
  const Methods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> methods = [
      {
        "title": "**** **** **** 8970",
        "subTitle": "Expires: 12/26",
        "image": AppImages.imagesVisa,
      },
      {
        "title": "**** **** **** 8970",
        "subTitle": "Expires: 12/26",
        "image": AppImages.imagesPayment,
      },
      {
        "title": "mailaddress@mail.com",
        "subTitle": "Expires: 12/26",
        "image": AppImages.imagesPaypal,
      },
      {
        "title": "Cash",
        "subTitle": "Expires: 12/26",
        "image": AppImages.imagesCash,
      }
    ];

    return Column(
      children: methods.map(
        (e) {
          return MethodComponent(
              title: e["title"]!, subTitle: e["subTitle"]!, image: e["image"]!);
        },
      ).toList(),
    );
  }
}
