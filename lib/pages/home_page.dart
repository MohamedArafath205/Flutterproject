import 'package:clickandcut/colors.dart';
import 'package:clickandcut/components/big_text.dart';
import 'package:clickandcut/components/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        child: Container(
          margin: const EdgeInsets.only(top: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    BigText(
                      text: "India",
                      FontSize: 20,
                      color: AppColors.primaryColor,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "Chennai",
                          color: Colors.black54,
                        ),
                        const Icon(Icons.arrow_drop_down, color: Colors.black54)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(Icons.search, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
