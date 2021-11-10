import 'package:flutter/material.dart';
import 'package:Profile/Widgets/AppBar.dart';
import 'package:Profile/Widgets/BootomBar.dart';
import 'package:Profile/Widgets/Profile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:Profile/Widgets/Background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: non_constant_identifier_names
  //For launching the url
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar1(),
        bottomNavigationBar: BotBar(),
        body: Center(
          child: Background(
            wid: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'asset/logo.jpg',
                    height: 100,
                  ),
                ),
                Text("Check My Profile on",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(
                  height: 10,
                ),

                //Youtube Profile
                ProfileButton(
                  onPressed: () {
                    _launchURL("https://www.youtube.com/c/DesignnTechie");
                  },
                  image: 'asset/youtube.jpg',
                  name: 'Check Out on Youtube',
                ),

                //Twitter Profile
                ProfileButton(
                  onPressed: () {
                    _launchURL("https://twitter.com/Einstei66974056");
                  },
                  image: 'asset/twitter.png',
                  name: 'Check Out on Twitter',
                ),

                //GitHub Profile
                ProfileButton(
                  onPressed: () {
                    _launchURL("https://github.com/don001-d");
                  },
                  image: 'asset/Github.jpg',
                  name: 'Check Out on Github',
                ),

                //LinkedIn Profile
                ProfileButton(
                  onPressed: () {
                    _launchURL(
                        "https://www.linkedin.com/in/deepa-anandhan-952b781a2/");
                  },
                  image: 'asset/Linkedin.png',
                  name: 'Check Out on Linked In',
                ),
                //LinkedIn Profile
                ProfileButton(
                  onPressed: () {
                    _launchURL("https://www.instagram.com/design_n_techie/");
                  },
                  image: 'asset/Instagram.png',
                  name: 'Check Out on Instagram',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
