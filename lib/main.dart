import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrientationLayout(),
    );
  }
}

class OrientationLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientation Builder'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? PortraitLayout()
              : LandscapeLayout();
        },
      ),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20.0),
          CircleAvatar(
            radius: 80.0,
            backgroundImage: NetworkImage(
              'https://rb.gy/l5xzf',
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Walid Dipto',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(14.0),
              child: Text(
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                style: TextStyle(fontSize: 16,),
              )),
          SizedBox(height: 20.0),
          GridView.builder(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Image.network(
                'https://rb.gy/uzjju',
                fit: BoxFit.cover,
              );
            },
          ),
        ],
      ),
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20.0),
          CircleAvatar(
            radius: 80.0,
            backgroundImage: NetworkImage(
              'https://rb.gy/l5xzf',
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Walid Dipto',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(14.0),
              child: Text(
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                style: TextStyle(fontSize: 16,),
              )),
          SizedBox(height: 20.0),
          GridView.builder(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Image.network(
                'https://rb.gy/uzjju',
                fit: BoxFit.cover,
              );
            },
          ),
        ],
      ),
    );
  }
}