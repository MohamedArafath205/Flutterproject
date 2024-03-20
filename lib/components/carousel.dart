import 'package:clickandcut/colors.dart';
import 'package:clickandcut/components/big_text.dart';
import 'package:clickandcut/components/icon_and_text_widget.dart';
import 'package:clickandcut/components/small_text.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.redAccent,
        height: 320,
        child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            }));
  }

  Widget _buildPageItem(int Index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Index.isEven ? AppColors.primaryColor : Colors.white,
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('lib/assets/images/download.jpeg'))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "hairCut"),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(Icons.star,
                                    color: AppColors.primaryColor, size: 15))),
                        const SizedBox(width: 10),
                        SmallText(text: "4.5"),
                        const SizedBox(width: 10),
                        SmallText(text: "1287"),
                        const SizedBox(width: 10),
                        SmallText(text: "Reviews"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        IconAndText(
                          icon: Icons.circle_sharp,
                          text: "Normal",
                          iconColor: AppColors.Color1,
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
