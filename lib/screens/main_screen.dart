import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends ConsumerWidget {
  double? _deviceHeight;
  double? _deviceWidth;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    print(_deviceHeight);
    print(_deviceWidth);
    return _buildUI();
  }

  Widget _buildUI() {
    return Scaffold(
      backgroundColor: Colors.black,
    );
  }
}
