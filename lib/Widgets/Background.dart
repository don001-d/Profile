import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.wid,
  }) : super(key: key);

  final wid;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/Background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: wid);
  }
}
