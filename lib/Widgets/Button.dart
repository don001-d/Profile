import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff4338CA);
    const secondaryColor = Color(0xff6D28D9);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color(0xffEF4444);

    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient:
                const LinearGradient(colors: [primaryColor, secondaryColor])),
        child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              alignment: Alignment.center,
              padding: MaterialStateProperty.all(const EdgeInsets.only(
                  right: 75, left: 75, top: 12.5, bottom: 12.5)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              )),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: accentColor, fontSize: 16),
          ),
        ));
  }
}
