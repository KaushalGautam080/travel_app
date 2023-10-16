import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/colors.dart';
import 'package:travel_app/core/constants/ui_text.dart';
import 'package:travel_app/core/utils/text_styles.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "image1.png",
    "image2.png",
    "image3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/${images[index]}",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(
                top: 150,
                left: 20,
                right: 20,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        kTrips,
                        style: xxxlSemiBold(kBlack),
                      ),
                      Text(
                        kDiscover,
                        style: xxxlSemiBold(kBlack).copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                     const SizedBox(
                        width: 250,
                        child: Text(kIntrotxt),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// Text large(String text, Color color) => Text(
//       text,
//       style: TextStyle(color: color),
//     );
