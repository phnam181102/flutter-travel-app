import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/representation/widgets/button_widget.dart';
import 'package:travel_app/representation/widgets/card_widget.dart';

import '../../core/constants/textstyle_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: [
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: ColorPalette.backgroundColor,
              ),
              child: Row(children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset("assets/images/avatar.png")),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Leonardo',
                  style: TextStyles.defaultStyle.setTextSize(15).medium,
                ),
                SizedBox(
                  width: 4,
                )
              ]),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: ColorPalette.backgroundColor,
              ),
              child: SvgPicture.asset("assets/icons/bell.svg"),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              "Explore the",
              style: TextStyles.defaultStyle.setTextSize(39).light,
            ),
            SizedBox(height: 16),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text("Beautiful ",
                    style: TextStyles.defaultStyle.setTextSize(39).semibold),
              ],
            ),
            Column(
              children: [
                Text("world!",
                    style: TextStyles.defaultStyle.semibold
                        .setTextSize(39)
                        .setColor(ColorPalette.orangeColor)),
                SvgPicture.asset('assets/icons/vector.svg')
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text("Best Destination",
                style: TextStyles.defaultStyle.setTextSize(20).semibold),
            Spacer(),
            Text("View all",
                style: TextStyles.defaultStyle
                    .setColor(ColorPalette.primaryColor)
                    .setTextSize(14))
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Container(
              child: CardWidget(),
            )
          ],
        )
      ]),
    );
  }
}
