import 'package:flutter/material.dart';

class CustomLoadingIndiacator extends StatelessWidget {
  const CustomLoadingIndiacator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
