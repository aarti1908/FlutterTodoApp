import 'package:flutter/material.dart';
import 'package:greetingcard/greetingcard.dart';

class Appreciations extends StatelessWidget {
  static const routeName = '/appreciations';

  const Appreciations({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          GreetingCard(
            cardHeight: 200,
            cardWidth: 200,
            cardHeading:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
          ),
          GreetingCard(
            cardHeight: 200,
            cardWidth: 200,
            cardHeading:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
          )
        ],
      ),
    );
  }
}
