import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../core/containers/challengescard.dart';

class ChallengesDotsIndicator extends StatefulWidget {
  const ChallengesDotsIndicator({super.key});

  @override
  State<ChallengesDotsIndicator> createState() =>
      ChallengesDotsIndicatorState();
}

class ChallengesDotsIndicatorState extends State<ChallengesDotsIndicator> {
  final _totalDots = 4;
  double _currentPosition = 0.0;

  double _validPosition(double position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1.0;
    return position;
  }

  void _updatePosition(double position) {
    setState(() => _currentPosition = _validPosition(position));
  }

  Widget _buildRow(List<Widget> widgets) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widgets,
      ),
    );
  }

  String getCurrentPositionPretty() {
    return (_currentPosition + 1.0).toStringAsPrecision(2);
  }

  @override
  Widget build(BuildContext context) {
    const decorator = DotsDecorator(
      activeColor: Colors.pink,
      // activeSize: Size.(30.0),
      // activeShape: RoundedRectangleBorder(),
    );

    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(16.0),
      children: [
        _buildRow(
          [
            Column(
              children: [
                Row(
                  children: const [
                    ChallengesCard(),
                    ChallengesCard(),
                    ChallengesCard(),
                    ChallengesCard()
                  ],
                ),
                DotsIndicator(
                  dotsCount: _totalDots,
                  position: _currentPosition,
                  decorator: decorator,
                  onTap: _updatePosition,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
