import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('Kizito'),
        ),
        Container(
          width: 72.0,
          height: 32.0,
          color: Colors.black,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Uche'),
        ),
      ],
    );
  }
}
