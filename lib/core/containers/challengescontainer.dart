import 'package:flutter/material.dart';
import 'package:foodpandaclone/core/containers/challengescard.dart';

class ChallengesContainer extends StatelessWidget {
  const ChallengesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: const Color(0xffF2F2F2),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Image.asset(
                "assets/chat.JPG",
                width: MediaQuery.of(context).size.width * 0.78,
              ),
              Image.asset("assets/pandaface.JPG",
                  fit: BoxFit.scaleDown,
                  width: MediaQuery.of(context).size.width * 0.10),
            ]),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.055,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("0 points",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.pink,
                                            fontSize: 12)),
                                const SizedBox(width: 10),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                  color: Colors.pink,
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: CircleAvatar(
                      backgroundColor: const Color(0xffF5F5F5),
                      radius: 20,
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffF5F5F5),
                            border: Border.all(color: Colors.pink, width: 2),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Icon(
                          Icons.star,
                          size: 18,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ),
                ]),
              )),
          const SizedBox(height: 30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                ChallengesCard(),
                ChallengesCard(),
                ChallengesCard(),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
