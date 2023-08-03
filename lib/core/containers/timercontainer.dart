import 'package:flutter/material.dart';
import 'package:foodpandaclone/core/appstrings.dart';

class TimerConainer extends StatefulWidget {
  const TimerConainer({super.key, required this.onPress});
  final VoidCallback? onPress;

  @override
  State<TimerConainer> createState() => _TimerConainerState();
}

class _TimerConainerState extends State<TimerConainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width,
        color: const Color(0xffF9D9E6),
        child: Column(children: [
          Align(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: widget.onPress,
                  icon: const Icon(
                    Icons.close,
                    color: Colors.pink,
                  ),
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 10),
              Image.asset(
                "assets/bucket.png",
                fit: BoxFit.scaleDown,
              ),
              Image.asset(
                "assets/timercaption.png",
                fit: BoxFit.scaleDown,
                width: MediaQuery.of(context).size.width * .45,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              discountcards(context, AppStrings.timerRsoffcontainertext1,
                  AppStrings.timerMinOrdercontainertext1, Colors.pink),
              discountcards(
                  context,
                  AppStrings.timerRsoffcontainertext2,
                  AppStrings.timerMinOrdercontainertext2,
                  const Color(0xffC11662)),
              discountcards(
                  context,
                  AppStrings.timerRsoffcontainertext3,
                  AppStrings.timerMinOrdercontainertext3,
                  const Color(0xff2B3034)),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [howitworkwidget(context), timercard(context)],
          )
        ]));
  }

  Widget discountcards(BuildContext context, String rsdiscount, String minOrder,
      Color cardcolor) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.305,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Card(
          child: Card(
        margin: const EdgeInsets.all(2.5),
        color: cardcolor,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            rsdiscount,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 16, color: Colors.white),
          ),
          Text(
            minOrder,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 10, color: Colors.white),
          ),
        ]),
      )),
    );
  }

  Widget howitworkwidget(BuildContext context) {
    return SizedBox(
        child: Row(
      children: [
        Text(AppStrings.howtext,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 13, color: Colors.pink)),
        IconButton(
          color: Colors.pink,
          icon: const Icon(Icons.keyboard_arrow_down),
          onPressed: () {},
        )
      ],
    ));
  }

  Widget timercard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text("Time Left   ",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w700)),
          TweenAnimationBuilder<Duration>(
              duration: const Duration(minutes: 10),
              tween:
                  Tween(begin: const Duration(minutes: 10), end: Duration.zero),
              onEnd: () {
                print('Timer ended');
              },
              builder: (BuildContext context, Duration value, Widget? child) {
                final minutes = value.inMinutes;
                final seconds = value.inSeconds % 60;
                return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          width: MediaQuery.of(context).size.width * 0.06,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('$minutes',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                          ),
                        ),
                        const Text(" : ",
                            style: TextStyle(color: Colors.white)),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            width: MediaQuery.of(context).size.width * 0.06,
                            height: MediaQuery.of(context).size.height * 0.04,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('$seconds',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                            ))
                      ],
                    ));
              }),
        ],
      ),
    );
  }
}
