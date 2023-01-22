import 'dart:ui';

import 'package:dhanraj_jewellers/components/category_panel.dart';

import 'package:dhanraj_jewellers/constants/app-style.dart';
import 'package:dhanraj_jewellers/model/app_model.dart';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../components/banner_panel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(
          child: Container(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Image.asset("assets/frames/bg-4.png"),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Image.asset("assets/logos/logo-black.png")),
                  BannerPanel(),
                  Container(child: CategoryPanel()),
                ]),
          ),
        ),
      ],
    ));
  }
}
