import 'package:flutter/material.dart';
import 'package:foodpandaclone/core/appstrings.dart';
import 'package:foodpandaclone/core/containers/timercontainer.dart';
import 'package:foodpandaclone/features/home/screens/challengeandrewardscreen.dart';

class DeliveryStatusScreen extends StatefulWidget {
  const DeliveryStatusScreen({super.key});

  @override
  State<DeliveryStatusScreen> createState() => _DeliveryStatusScreenState();
}

class _DeliveryStatusScreenState extends State<DeliveryStatusScreen> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: show == false
                ? TimerConainer(
                    onPress: () {
                      setState(() {
                        show = true;
                      });
                    },
                  )
                : const SizedBox(),
          ),
          const SizedBox(
            height: 15,
          ),
          fooditemes(
              context,
              "assets/subway.jpg",
              AppStrings.restaurentnameaddress1,
              AppStrings.restaurentgenerue1,
              AppStrings.rating),
          fooditemes(
              context,
              "assets/alfredo.jpg",
              AppStrings.restaurentnameaddress2,
              AppStrings.restaurentgenerue2,
              AppStrings.rating),
          fooditemes(
              context,
              "assets/brownie.jpg",
              AppStrings.restaurentnameaddress3,
              AppStrings.restaurentgenerue3,
              AppStrings.rating),
        ],
      ),
    ));
  }

  Widget fooditemes(BuildContext context, String img, String titletxt,
      String subtextt, String trailingtext) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ChallengeAndRewardScreen()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: ListTile(
            title: Text(titletxt,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.bold)),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.24,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Row(children: [
                    const Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.pink,
                    ),
                    Text.rich(
                      TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: AppStrings.rating,
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    )),
                        TextSpan(
                          text: " (100+)",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: const Color(0xff9B9B9B),
                                  ),
                        ),
                      ]),
                    )
                  ])),
            ),
            subtitle: Text(subtextt,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: const Color(0xff9B9B9B))),
          ),
        ),
      ],
    );
  }
}
