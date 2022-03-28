import 'package:budgetplannerui/Widgets/home_container.dart';
import 'package:budgetplannerui/colors.dart';
import 'package:budgetplannerui/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.background,
          shadowColor: Colors.transparent,
          title: BoldText(text: "Accounts"),
          centerTitle: true,
          leading: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                child: Image.asset(
                  'assets/profilePic.png',
                  fit: BoxFit.cover,
                  height: 10,
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: AppColors.blackText,
                ))
          ],
          bottom: TabBar(
              unselectedLabelColor: AppColors.blackText,
              labelColor: AppColors.endGreen,
              indicatorColor: Colors.transparent,
              labelPadding: const EdgeInsets.only(right: 5),
              tabs: const [
                Tab(text: '. Savings 2019'),
                Tab(text: '. Checkings 2019'),
                Tab(text: '. My Wallet 007')
              ]),
        ),
        body: const TabBarView(
          children: [
            TabTwoPage(),
            TabTwoPage(),
            TabTwoPage(),
          ],
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(top: 0),
          child: SizedBox(
            height: 70,
            width: 70,
            child: FloatingActionButton(
              elevation: 0,
              onPressed: () {},
              child: Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 6),
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      AppColors.endGreen,
                      AppColors.startGreen,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.shadowContainer,
                      blurRadius: 16,
                      offset: const Offset(0, 4), // Shadow position
                    ),
                  ],
                ),
                child: const Icon(Icons.add, size: 40),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          height: 80.0,
          padding: const EdgeInsets.only(top: 10.0, right: 0),
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24)),
            color: AppColors.witheText,
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.transparent,
              shadowColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,

              // sets the active color of the `BottomNavigationBar` if `Brightness` is ligh
            ), // sets the inactive color of the `BottomNavigationBar`
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: 0,
                selectedItemColor: AppColors.startGreen,
                unselectedItemColor: AppColors.unSelected,
                selectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                unselectedLabelStyle:
                    const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Ionicons.reader),
                      label: 'Accounts',
                      backgroundColor: Colors.black),
                  BottomNavigationBarItem(
                      icon: Icon(Ionicons.calculator), label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.bookmark_border,
                        color: Colors.transparent,
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Ionicons.pie_chart), label: 'Person'),
                  BottomNavigationBarItem(
                      icon: Icon(Ionicons.wallet), label: 'More'),
                ]),
          ),
        ),
      ),
    );
  }
}
