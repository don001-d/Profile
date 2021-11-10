import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final Function() onPressed;
  const ProfileButton({
    required this.onPressed,
    required this.name,
    required this.image,
    Key? key,
  }) : super(key: key);
  final image;
  final name;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        width: 300,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image, width: 40),

              //if you want to use Network image , Use below syntax
              // Image.network(
              //   "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Fsearch%20(2).png?alt=media&token=24a918f7-3564-4290-b7e4-08ff54b3c94c",
              //   width: 20,
              // ),
              const SizedBox(
                width: 10,
              ),
              Text(name, style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
          onPressed: onPressed,
        ));
  }
}
