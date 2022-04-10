import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:on_boarding_screen/home_page.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {

    final pageList = [
      PageModel(
          color: const Color(0xFF678FB4),
          heroImagePath: 'assets/png/hotels.png',
          title: const Text('Hotels',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.white,
                fontSize: 34.0,
              )),
          body: const Text('All hotels and hostels are sorted by hospitality rating',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              )),
          iconImagePath: 'assets/png/key.png'),
      PageModel(
          color: const Color(0xFF65B0B4),
          heroImagePath: 'assets/png/banks.png',
          title: const Text('Banks',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.white,
                fontSize: 34.0,
              )),
          body: const Text(
              'We carefully verify all banks before adding them into the app',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              )),
          iconImagePath: 'assets/png/wallet.png'),
      PageModel(
        color: const Color(0xFF9B90BC),
        heroImagePath: 'assets/png/stores.png',
        title: const Text('Store',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 34.0,
            )),
        body: const Text('All local stores are categorized for your convenience',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        icon: const Icon(
          Icons.shopping_cart,
          color: Color(0xFF9B90BC),
        ),
      ),
      // SVG Pages Example
      PageModel(
          color: const Color(0xFF678FB4),
          heroImagePath: 'assets/svg/hotel.svg',
          title: const Text('Hotels SVG',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.white,
                fontSize: 34.0,
              )),
          body: const Text('All hotels and hostels are sorted by hospitality rating',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              )),
          iconImagePath: 'assets/svg/key.svg',
          heroImageColor: Colors.white),
      PageModel(
          color: const Color(0xFF65B0B4),
          heroImagePath: 'assets/svg/bank.svg',
          title: const Text('Banks SVG',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.white,
                fontSize: 34.0,
              )),
          body: const Text(
              'We carefully verify all banks before adding them into the app',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              )),
          iconImagePath: 'assets/svg/cards.svg',
          heroImageColor: Colors.white),
      PageModel(
        color: const Color(0xFF9B90BC),
        heroImagePath: 'assets/svg/store.svg',
        title: const Text('Store SVG',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 34.0,
            )),
        body: const Text('All local stores are categorized for your convenience',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        iconImagePath: 'assets/svg/cart.svg',
      ),
    ];

    return Scaffold(
      body: FancyOnBoarding(
        doneButtonText: "Done",
        skipButtonText: "Skip",
        pageList: pageList,
        onDoneButtonPressed: () =>
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HomePage()
                )
            ),
        onSkipButtonPressed: () =>
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HomePage()
                )
            ),
      ),
    );
  }
}
