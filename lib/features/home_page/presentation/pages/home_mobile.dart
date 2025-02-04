import 'package:flutter/material.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/mobile_header.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          MobileHeader(),
          Expanded(
            child: Image.asset(
              'assets/yandeh_card.png',
            ),
          ),
        ],
      ),
    );
  }
}
