import 'package:flutter/material.dart';

class IntervalProgressBar extends StatefulWidget {
  const IntervalProgressBar({super.key});

  @override
  State<IntervalProgressBar> createState() => _IntervalProgressBarState();
}

class _IntervalProgressBarState extends State<IntervalProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _bar(),
        _label(),
      ],
    );
  }

  Widget _bar() {
    return Column(
      children: [
        _interval(customColor: const Color.fromARGB(255, 255, 0, 0)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 176, 170, 5)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 235, 228, 12)),
        _separator(),
      ],
    );
  }

  Widget _interval({required Color customColor}) {
    return SizedBox(
      height: 5,
      width: 22,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: customColor,
        ),
      ),
    );
  }

  Widget _separator() {
    return const SizedBox(height: 3);
  }

  Widget _label() {
    return Text(
      '1.0',
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
