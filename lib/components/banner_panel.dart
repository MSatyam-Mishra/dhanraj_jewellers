import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../model/app_model.dart';

class BannerPanel extends StatefulWidget {
  const BannerPanel({Key? key}) : super(key: key);

  @override
  State<BannerPanel> createState() => _BannerPanelState();
}

class _BannerPanelState extends State<BannerPanel> {
  int currentPage = 0;

  Widget updateIndicator() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: homeBanner.map((model) {
          var index = homeBanner.indexOf(model);
          return (Container(
            margin: EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
                color: currentPage == index
                    ? Color.fromARGB(255, 17, 17, 17)
                    : Color.fromARGB(255, 156, 155, 155),
                shape: BoxShape.circle),
            width: 10,
            height: 10,
          ));
        }).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.60,
            width: double.infinity,
            child: PageView.builder(
              itemCount: homeBanner.length - 1,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              controller:
                  PageController(initialPage: 0, viewportFraction: 0.80),
              itemBuilder: (context, index) {
                return Padding(
                  padding: currentPage == index
                      ? EdgeInsets.only(top: 35)
                      : EdgeInsets.only(bottom: 35),
                  child: Opacity(
                      opacity: currentPage == index ? 1 : 0.4,
                      child: Padding(
                        padding: currentPage != index
                            ? EdgeInsets.only(left: 0.0)
                            : EdgeInsets.only(right: 8),
                        child: BannerCard(model: homeBanner[index]),
                      )),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        updateIndicator()
      ],
    );
  }
}

class BannerCard extends StatelessWidget {
  BannerCard({required this.model});
  AppModel model;

  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        // width: 300,
        //height: 300,

        child: ClipRRect(
            borderRadius: BorderRadius.circular(45),
            child: Image.asset(
              "assets/banners/${model.bannerImage}",
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
