import 'package:flutter/material.dart';

class MartContainer extends StatelessWidget {
  // final Color backgroundColor;
  final String img;
  final String titletext;
  final String subtext;

  const MartContainer(
      {super.key,
      required this.img,
      required this.titletext,
      required this.subtext});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
          child: Padding(
        padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12),
        child: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(titletext,
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 18)),
              ),
              Text(subtext,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 12)),
              Image(
                  image: AssetImage(img),
                  // width: 100,
                  height: 60,
                  fit: BoxFit.scaleDown),
            ],
          ),
        ),
      )

          // Icon(icondata, color: Colors.white),
          ),
    );
  }
}
