import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constants/color_constants.dart';

import '../../core/constants/textstyle_constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 268,
      padding: EdgeInsets.fromLTRB(14, 14, 14, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
        color: Colors.white,
      ),
      child: Column(children: [
        Stack(
          children: [
            Image.asset(
              "assets/images/card-image.png",
            ),
            Positioned(
              top: 14,
              right: 14,
              child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black.withOpacity(0.18),
                  ),
                  child: SvgPicture.asset("assets/icons/bookmark.svg")),
            ),
          ],
        ),
        SizedBox(height: 14),
        Row(
          children: [
            Text("Niladri Reservoir",
                style: TextStyles.defaultStyle.medium.setTextSize(18)),
            Spacer(),
            Row(
              children: [
                SvgPicture.asset("assets/icons/star.svg"),
                SizedBox(
                  width: 4,
                ),
                Text("4.7", style: TextStyles.defaultStyle.setTextSize(15))
              ],
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SvgPicture.asset("assets/icons/location.svg"),
            SizedBox(
              width: 4,
            ),
            Text("Tekergat, Sunamgnji",
                style: TextStyles.defaultStyle
                    .setTextSize(15)
                    .setColor(ColorPalette.textColor2))
          ],
        )
      ]),
    );
  }
}
