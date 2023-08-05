import 'package:flutter/material.dart';

import 'my_contents.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final Widget title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(72.0),
        child: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: widget.title,
        ),
      ),
      body: const MyContents(),
    );
  }
}
