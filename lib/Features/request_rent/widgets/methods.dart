import 'package:flutter/material.dart';
import 'package:ride_share/Features/request_rent/widgets/method_component.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
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
        "image": AppImages.visaCard,
      },
      {
        "title": "**** **** **** 8970",
        "subTitle": "Expires: 12/26",
        "image": AppImages.imagesPayment,
      },
      {
        "title": "mailaddress@mail.com",
        "subTitle": "Expires: 12/26",
        "image": AppImages.visaCard,
      },
      {
        "title": "Cash",
        "subTitle": "Expires: 12/26",
        "image": AppImages.imagesPayment,
      }
    ];

    return Column(
      children: methods.map(
        (e) {
          return Padding(
            padding:
                const EdgeInsets.only(bottom: AppSizes.spaceBtwPaymentCard),
            child: MethodComponent(
              title: e["title"]!,
              subTitle: e["subTitle"]!,
              image: e["image"]!,
            ),
          );
        },
      ).toList(),
    );
  }
}
