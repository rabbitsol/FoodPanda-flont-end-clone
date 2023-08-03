import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodpandaclone/core/appstrings.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:foodpandaclone/core/containers/dailydealcardcontainer.dart';
import 'package:foodpandaclone/core/containers/containermart.dart';
import 'package:foodpandaclone/core/containers/deliverycontainer.dart';
import 'features/home/screens/backgroundtiles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            bodyText1: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            )),
      ),
      home: const DasshboardPage(title: 'Food Panda'),
    );
  }
}

class DasshboardPage extends StatelessWidget {
  const DasshboardPage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.pink),
          toolbarHeight: 80,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          titleSpacing: 0,
          title: ListTile(
            // contentPadding: const EdgeInsets.only(right: -15),
            title: const Text(AppStrings.location,
                style: TextStyle(color: Colors.white)),
            subtitle: Text(AppStrings.area,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 12)),
            trailing: Wrap(
              spacing: 12,
              children: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.shopping_basket, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40.0),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xffF1F1F1),
                ),
                width: MediaQuery.of(context).size.width * 0.932,
                height: MediaQuery.of(context).size.height * 0.05,
                child: TextFormField(
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: -5, bottom: 15),
                      icon: Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                      hintText: "Search for shops & restaurents",
                    )),
              ),
            ),
          ),
        ),
        body: SizedBox(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              // Flchild:
              Container(
                  padding: const EdgeInsets.all(15),
                  color: const Color(0xffF1F1F1),
                  child: StaggeredGrid.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    children: const [
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 3,
                        child: DeliveryContainer(
                          titletext: AppStrings.title1,
                          subtext: AppStrings.subtext1,
                          img: "assets/burger.jpg",
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: MartContainer(
                          titletext: AppStrings.title2,
                          subtext: AppStrings.subtext2,
                          img: "assets/woodencart.jpg",
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1,
                        child: BackGroundTile(
                          titletext: AppStrings.title3,
                          subtext: AppStrings.subtext3,
                          img: "assets/shops.png",
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1,
                        child: BackGroundTile(
                          titletext: AppStrings.title4,
                          subtext: AppStrings.subtext4,
                          img: "assets/pastainplate.jpg",
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1,
                        child: BackGroundTile(
                          titletext: AppStrings.title5,
                          subtext: AppStrings.subtext5,
                          img: "assets/pickups.jpg",
                        ),
                      ),
                    ],
                  )),

              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 18, 15, 15),
                  child: Text(
                    AppStrings.deals,
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 18),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    DailyDealCardContainer(
                      img: "assets/dealcard1.JPG",
                    ),
                    DailyDealCardContainer(
                      img: "assets/dealcard2.JPG",
                    ),
                    DailyDealCardContainer(
                      img: "assets/dealcard2.JPG",
                    )
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
