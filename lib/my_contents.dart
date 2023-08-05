import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './my_data_provider.dart';

class MyContents extends ConsumerWidget {
  const MyContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double sliderValue = ref.watch(myDataProvider).sliderValue;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sliderValue.toStringAsFixed(2),
          style: const TextStyle(fontSize: 100),
        ),
        Slider(
          value: sliderValue,
          onChanged: (value) {
            ref.read(myDataProvider.notifier).changeState(value);
          },
        ),
      ],
    );
  }
}
