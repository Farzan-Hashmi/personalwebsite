import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return MaterialApp(
        home: RawScrollbar(
            thumbColor: Colors.grey,
            controller: controller,
            isAlwaysShown: true,
            thickness: 10,
            radius: Radius.circular(0),
            child: PageView(
              controller: controller,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              children: [
                HomePage(),
                SecondScreen(),
              ],
            )));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    CircleAvatar(
                        radius: 90,
                        backgroundImage: AssetImage(
                          "images/farzanpic.jpg",
                        ))
                  ]),
              SizedBox(
                height: 30,
              ),
              Text(
                "Farzan Hashmi",
                style: TextStyle(
                    fontSize: 20, fontFamily: 'ComicSans', color: Colors.white),
              ),
              SizedBox(height: 30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Image.asset('images/blacklinkedin.png'),
                      onPressed: () {
                        openlinkedin();
                      },
                      iconSize: 30,
                    ),
                    IconButton(
                      icon: Image.asset('images/blackgithub.png'),
                      onPressed: () {
                        opengithub();
                      },
                      iconSize: 30,
                    ),
                    IconButton(
                      icon: Image.asset('images/blackmedium.png'),
                      onPressed: () {
                        openmedium();
                      },
                      iconSize: 30,
                    ),
                    IconButton(
                      icon: Image.asset('images/resume.png'),
                      onPressed: () {
                        openresume();
                      },
                      iconSize: 30.5,
                    ),
                  ]),
            ]),
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
      ),
    ) ;
  }

  openlinkedin() {
    String url = "https://www.linkedin.com/in/farzan-hashmi-066881191/";
    launch(url);
  }

  opengithub() {
    String url = "https://github.com/Farzan-Hashmi";
    launch(url);
  }

  openmedium() {
    String url = "https://farzan-ahmad-hashmi.medium.com";
    launch(url);
  }

  openresume() {
    String url =
        "https://drive.google.com/file/d/1OmaXUr720afDoJB_XRPXTvxBNERMRll2/view?usp=sharing";
    launch(url);
  }
}

class SecondScreen extends StatelessWidget {
  @override
  final controller = PageController(initialPage: 1);
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            SizedBox(
                height: 70,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "My Thoughts",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'ComicSans',
                            color: Colors.white),
                      ),
                    ])),
            SizedBox(
                height: 40,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => Blog1()));
                        },
                        child: Text(
                          '- 10/20/21: Thoughts on Flutter',
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                      )
                    ])),
              SizedBox(
                height: 40,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => Blog2()));
                        },
                        child: Text(
                          '- 10/22/21: Techlead, sorry THE Techlead',
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                      )
                    ]))
          ],
        ));
  }
}


class Blog1 extends StatelessWidget{
  @override
  final controller = PageController(initialPage: 1);
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: <Widget> [
            SizedBox(height: 50),
            Text("- 10/20/21: Thoughts on Flutter:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Roboto'),),
            SizedBox(height: 30),
            Text("So I used flutter and dart to build this website completely and its been alright imo. Tbh the main reason why I chose flutter was because I thought other web frameworks involving JS were too hard to learn quickly. I pretty much learned flutter through building this website in the past 2 days. My favorite thing so far has been the lack of CSS and HTML. That being said I think flutter still has a little bit to go before it can be used in production ready WebDev. For example, if you notice, scrolling through these pages on a PC is far more jittery than on mobile, and there really isn't a way I can fix this easily. The 'everything is a widget' aspect of Flutter can seem messy and wierd at first, but its not that bad as soon as you start programming a bit more.  ", style: TextStyle(fontFamily: 'Roboto', color: Colors.white, fontWeight: FontWeight.w100, height: 1.8),),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => MyApp()),
                );
              },
              child: Text('go home', style: TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold),),
            )

          ],
        ),
      
      );
  }
}




class Blog2 extends StatelessWidget{
  @override
  final controller = PageController(initialPage: 1);
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: <Widget> [
            SizedBox(height: 50),
            Text("- 10/22/21: Techlead:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Roboto'),),
            SizedBox(height: 30),
            Text("Techlead is by far the best youtuber of all time.", style: TextStyle(fontFamily: 'Roboto', color: Colors.white, fontWeight: FontWeight.w100, height: 1.8),),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => MyApp()),
                );
              },
              child: Text('go home', style: TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold),),
            )

          ],
        ),
      
      );
  }
}