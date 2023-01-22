import 'package:dhanraj_jewellers/components/cetegory_card.dart';
import 'package:dhanraj_jewellers/model/app_model.dart';
import 'package:flutter/material.dart';

import '../constants/app-style.dart';

class CategoryPanel extends StatelessWidget {
  //CategoryPanel({required this.model});
  //AppModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: Stack(
            children: [
              Image.asset("assets/frames/cat-bg.png"),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Center(
                  child: Text(
                    "Category",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 70, 63, 1)),
                  ),
                ),
              ),
            ],
          )),
          SizedBox(
            height: 35,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(174, 218, 218, 218)),
              width: MediaQuery.of(context).size.width * 0.40,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/icons/bangle.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(66, 185, 185, 185)),
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Bangle",
                          style: AppStyle.labelStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ), //this is the end of Bangle section
            Container(
              //starting of bendi section
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(174, 218, 218, 218)),
              width: MediaQuery.of(context).size.width * 0.40,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/icons/bendi.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(66, 185, 185, 185)),
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Bendi",
                          style: AppStyle.labelStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),

          //1st row rnds here that contains bangle and bendi
          SizedBox(height: 25),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(174, 218, 218, 218)),
              width: MediaQuery.of(context).size.width * 0.40,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/icons/earings.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(66, 185, 185, 185)),
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Earings",
                          style: AppStyle.labelStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //end of earing seaction
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(174, 218, 218, 218)),
              width: MediaQuery.of(context).size.width * 0.40,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/icons/mangalsutra.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(66, 185, 185, 185)),
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Mangalsutra",
                          style: AppStyle.labelStyle,
                        ),
                      ),
                    ),
                  ),
                  //end of managalsutra section
                ],
              ),
            ),
          ]),

          //end of 2nd row conatining earings and mangalsutra

          SizedBox(
            height: 25,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(174, 218, 218, 218)),
              width: MediaQuery.of(context).size.width * 0.40,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/icons/necklace.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(66, 185, 185, 185)),
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Necklace",
                          style: AppStyle.labelStyle,
                        ),
                      ),
                    ),
                  ),
                  //end of nacklace section
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(174, 218, 218, 218)),
              width: MediaQuery.of(context).size.width * 0.40,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/icons/nosering.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(66, 185, 185, 185)),
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Nosering",
                          style: AppStyle.labelStyle,
                        ),
                      ),
                    ),
                  ),
                  //end of nosering section
                ],
              ),
            ),
          ]),
          //end of 3rd row containg necklace and nosering
          SizedBox(
            height: 25,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(174, 218, 218, 218)),
              width: MediaQuery.of(context).size.width * 0.40,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/icons/payal.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(66, 185, 185, 185)),
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Payal",
                          style: AppStyle.labelStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //end of payal section
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(174, 218, 218, 218)),
              width: MediaQuery.of(context).size.width * 0.40,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/icons/ring.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(66, 185, 185, 185)),
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Ring",
                          style: AppStyle.labelStyle,
                        ),
                      ),
                    ),
                  ),
                  //end of ring section
                ],
              ),
            ),
          ]),
          //4th row containing payal and ring
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
