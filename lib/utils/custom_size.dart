import 'package:flutter/material.dart';

class CustomSize {
  getHeightForHomePage(BuildContext context) {
    // Height required by screen
    // log(kToolbarHeight.toString()); -> 56
    // log(kBottomNavigationBarHeight.toString()); -> 56
    // log(Scaffold.of(context).appBarMaxHeight.toString()); -> 96
    // 30 is the height of TopWelcomeNar and PageHeading Widgets
    var bodyHeight = 0.0;
    if (Scaffold.of(context).appBarMaxHeight == null) {
      bodyHeight = MediaQuery.of(context).size.height -
          (kBottomNavigationBarHeight + 96 + 30);
      // 96 appBar height
    } else {
      bodyHeight = MediaQuery.of(context).size.height -
          (Scaffold.of(context).appBarMaxHeight! +
              kBottomNavigationBarHeight +
              30);
    }

    return bodyHeight;
  }

  getHeightForScreenWithoutBottomNav(BuildContext context, bool searchBar) {
    var bodyHeight = MediaQuery.of(context).size.height -
        (Scaffold.of(context).appBarMaxHeight! + 30);

    if (searchBar) {
      bodyHeight = bodyHeight - 80;
      // 80 is the height of search bar
    }
    return bodyHeight;
  }
}
