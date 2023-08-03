import 'package:flutter/material.dart';
import 'package:foodpandaclone/core/appstrings.dart';

class ChallengesCard extends StatelessWidget {
  const ChallengesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 15.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.68,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Card(
              color: const Color(0xffFDF2F6),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 100, 15, 15),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(AppStrings.challengescardtxt,
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 16)),
                  const SizedBox(height: 20),
                  const Divider(
                    height: 3,
                    indent: 3,
                    thickness: 4,
                    endIndent: 3,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffF5F5F5),
                            border: Border.all(
                                color: const Color(0xff9B9B9B), width: 2),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Icon(
                          Icons.star,
                          size: 18,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Win 400 points",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: const Color(0xff9B9B9B)),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(
                        Icons.alarm,
                        size: 25,
                        color: Color(0xff9B9B9B),
                      ),
                      const SizedBox(width: 10),
                      Text("47 days left",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(color: const Color(0xff9B9B9B)))
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Divider(
                    height: 3,
                    thickness: 1,
                  ),
                  const SizedBox(height: 5),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize:
                            Size(MediaQuery.of(context).size.width * 0.40, 45),
                      ),
                      onPressed: () {},
                      child: Text("Accept Challenge",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)))
                ]),
              ),
            ),
          ),
        ),
        Image.asset("assets/pandamarathon.JPG"),
      ],
    );
  }
}
