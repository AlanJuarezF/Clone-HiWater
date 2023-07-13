import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DrinksScreen extends StatelessWidget {
  const DrinksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 16.0,
          leadingWidth: 100,
          leading: Text(
            'Cancelar',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        body: GridView.count(crossAxisCount: 2, children: [
          _oneCard(context),
          _oneCard(context),
          _oneCard(context),
          _oneCard(context),
        ]));
  }

  Widget _oneCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/drinks');
      },
      child: const SizedBox(
        height: 100.0,
        child: Card(
            elevation: 10.0,
            color: Colors.cyanAccent,
            child: Text('Esta es una tarjeta clickable')),
      ),
    );
  }

  Widget _hour(BuildContext context) {
    String formattedTime = DateFormat.Hm().format(DateTime.now());
    return Text(
      formattedTime,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
