import 'package:flutter/material.dart';
import 'package:youtube/CARDS/pramotion_card.dart';
import 'package:youtube/SCREENS/viewall_screen.dart';
import 'package:youtube/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this, initialIndex: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 0,
        title: Image.asset(
          youtubeIconBlank,
          width: 120,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cast_sharp,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(myPic),
          ),
          const SizedBox(
            width: 10,
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Column(
            children: [
              SizedBox(
                height: 35,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    exploreButton(),
                    verticalDivider(),
                    TabBar(
                      labelPadding: const EdgeInsets.all(0),
                      controller: _tabController,
                      indicatorColor: darkGray,
                      isScrollable: true,
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(25),
                          color: darkGray),
                      tabs: [
                        // exploreButton(),
                        // verticalDivider(),
                        tabWidget(label: "All"),
                        tabWidget(label: "Tamil Cinema"),
                        tabWidget(label: "Music"),
                        tabWidget(label: "Bike"),
                        tabWidget(label: "Traval"),
                        tabWidget(label: "Coding"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
      body: TabBarView(controller: _tabController, children: const [
        ViewAllScreen(),
        ViewAllScreen(),
        ViewAllScreen(),
        ViewAllScreen(),
        ViewAllScreen(),
        ViewAllScreen(),
      ]),
    );
  }

  Widget tabWidget({
    required String label,
  }) {
    return Container(
      height: 30,
      padding: const EdgeInsets.only(left: 10, right: 10),
      margin: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        border: Border.all(color: darkGray),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Tab(
        text: label,
      ),
    );
  }
}
