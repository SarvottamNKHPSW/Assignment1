import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

final String imageLink =
    'https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg';

String text = '''
It is a long established fact that a reader will be distracted by the readable content
of a page when looking at its layout. The point of using Lorem Ipsum is that it has a
more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.
''';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg')
                  )
              )
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title: Text("Some Garden Cherry",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
              subtitle: Text("Kandersteg, Switzerland",
                  style: TextStyle(fontSize: 18)),
              trailing:
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.red),
                  SizedBox(
                    width: 5,
                  ),
                  Text("41"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconText("Call", Icons.call),
              IconText("Route", Icons.navigation),
              IconText("Share", Icons.share),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Padding(padding: EdgeInsets.all(20), child: Text(text))
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final String text;
  final IconData icon;

  IconText(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        SizedBox(height: 10),
        Text(text),
      ],
    );
  }
}
