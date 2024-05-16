import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: const EdgeInsets.only(top: 70, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu,
                size: 30,
                color: Colors.black87,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5)),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText(text: 'Discover')),
        const SizedBox(
          height: 30,
        ),
        //tabbar
        Container(
          child: TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: "Places"),
              Tab(text: "Inspiration"),
              Tab(text: "Emotions"),
            ],
          ),
        ),
        Container(
          height: 300,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              Text("Hi"),
              Text("There"),
              Text("Bye"),
            ],
          ),
        )
      ]),
    );
  }
}
