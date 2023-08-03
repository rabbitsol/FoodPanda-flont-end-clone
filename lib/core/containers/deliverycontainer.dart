import 'package:flutter/material.dart';
import 'package:foodpandaclone/features/home/screens/deliverystatusscreen.dart';

class DeliveryContainer extends StatelessWidget {
  // final Color backgroundColor;
  final String img;
  final String titletext;
  final String subtext;

  const DeliveryContainer(
      {super.key,
      required this.img,
      required this.titletext,
      required this.subtext});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: ((context) => const DeliveryStatusScreen()))),
      child: Card(
          child: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child:
                  Text(titletext, style: Theme.of(context).textTheme.headline1),
            ),
            Text(subtext,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 12)),
            Image(
                image: AssetImage(img),
                //width: 200,
                height: 70,
                fit: BoxFit.scaleDown),
          ],
        ),
      )),
    );
  }
}
