import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      borderRadius: BorderRadius.circular(50),
      minHeight: 140,
      maxHeight: MediaQuery.of(context).size.height * 0.3,
      backdropEnabled: true,
      panel: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Icon(
                Icons.home,
                size: 30,
              ),
              Icon(
                Icons.apps_rounded,
                size: 30,
              ),
              Icon(
                Icons.favorite_outline,
                size: 30,
              ),
              Icon(
                Icons.search_rounded,
                size: 30,
              ),
              Icon(
                Icons.people,
                size: 30,
              )
            ]),
          ],
        ),
      ),
    );
  }
}
