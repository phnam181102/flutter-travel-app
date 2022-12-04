import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/textstyle_constants.dart';

class MiniCardWidget extends StatelessWidget {
  const MiniCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0xffb4bcc9).withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 6), // changes position of shadow
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: Image.asset("assets/images/mini-img.png"),
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            height: 72,
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/calendar.svg",
                      width: 16,
                      height: 16,
                      color: ColorPalette.textColor2,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "26 January 2022",
                      style: TextStyles.defaultStyle
                          .setColor(ColorPalette.textColor2)
                          .setTextSize(13),
                    )
                  ],
                ),
                Spacer(),
                Text(
                  "Niladri Reservoir",
                  style: TextStyles.defaultStyle.medium.setTextSize(16),
                ),
                Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/location.svg",
                      width: 16,
                      height: 16,
                      color: ColorPalette.textColor2,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Takergat, Sunamgnji",
                      style: TextStyles.defaultStyle
                          .setTextSize(13)
                          .setColor(ColorPalette.textColor2),
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          SvgPicture.asset(
            "assets/icons/arrow-right.svg",
            color: ColorPalette.textColor2,
          )
        ],
      ),
    );
  }
}
