import 'package:flutter/material.dart';
import 'package:Profile/Widgets/PopUp.dart';

class BotBar extends StatelessWidget {
  const BotBar({Key? key}) : super(key: key);

  final primaryColor = const Color(0xff4338CA);
  final secondaryColor = const Color(0xff6D28D9);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xff4338CA), Color(0xff6D28D9)]),
      ),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          height: 66,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBr(
                    text: "Home",
                    icon: Icons.home,
                    selected: true,
                    onPressed: () {
                      showDialog(
                          context: context, builder: (context) => PopUp());
                    }),
                IconBr(
                    text: "Search",
                    icon: Icons.search_outlined,
                    selected: false,
                    onPressed: () {}),
                IconBr(
                    text: "Add",
                    icon: Icons.add_to_photos_outlined,
                    selected: false,
                    onPressed: () {}),
                IconBr(
                    text: "Cart",
                    icon: Icons.local_grocery_store_outlined,
                    selected: false,
                    onPressed: () {}),
                IconBr(
                    text: "Calendar",
                    icon: Icons.date_range_outlined,
                    selected: false,
                    onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconBr extends StatelessWidget {
  const IconBr(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xff4338CA);
  final accentColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon:
              Icon(icon, size: 25, color: selected ? accentColor : Colors.grey),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12,
              height: .1,
              color: selected ? accentColor : Colors.grey),
        )
      ],
    );
  }
}
