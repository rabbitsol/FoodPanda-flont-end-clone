import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodpandaclone/core/appstrings.dart';
import 'package:foodpandaclone/core/containers/challengescontainer.dart';

class ChallengeAndRewardScreen extends StatelessWidget {
  const ChallengeAndRewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              systemOverlayStyle:
                  const SystemUiOverlayStyle(statusBarColor: Color(0xff757575)),
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.pink,
                ),
                onPressed: () {},
              ),
              title: Text("Challenges and rewards",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontSize: 16)),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Center(
                    child: Text(
                      "History",
                      style: TextStyle(color: Colors.pink),
                    ),
                  ),
                )
              ],
              bottom: const TabBar(
                  physics: NeverScrollableScrollPhysics(),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 2,
                  labelColor: Colors.pink,
                  unselectedLabelColor: Colors.black,
                  // isScrollable: true,
                  tabs: [
                    SizedBox(
                      height: 30,
                      child: Text(AppStrings.challengesTab),
                    ),
                    SizedBox(
                      height: 30,
                      child: Text(AppStrings.badgesTab),
                    ),
                    SizedBox(
                      height: 30,
                      child: Text(AppStrings.rewardsshopTab),
                    )
                  ]),
            ),
            body: const TabBarView(
              children: [
                Center(
                  child: ChallengesContainer(),
                ),
                Center(
                  child: Icon(Icons.food_bank),
                ),
                Center(
                  child: Icon(Icons.money),
                )
              ],
            )));
  }
}
