import 'package:flutter/material.dart';

class DailyDealCardContainer extends StatelessWidget {
  const DailyDealCardContainer({super.key, required this.img});
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width * 0.40,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
          //
        ),
      ),
    );
  }
}
