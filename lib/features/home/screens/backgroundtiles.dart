import 'package:flutter/material.dart';

class BackGroundTile extends StatelessWidget {
  // final Color backgroundColor;
  final String img;
  final String titletext;
  final String subtext;

  const BackGroundTile(
      {super.key,
      required this.img,
      required this.titletext,
      required this.subtext});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Card(
            child: Center(
          child: ListTile(
              title: Text(titletext,
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 17)),
              subtitle: Text(subtext,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 10)),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                    image: AssetImage(img),
                    width: 45,
                    height: 48,
                  ),
                ],
              )),
        )

            // Icon(icondata, color: Colors.white),
            ),
      ),
    );
  }
}
