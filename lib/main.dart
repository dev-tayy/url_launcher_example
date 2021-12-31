import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('URL Launcher Usecases'),
            backgroundColor: Colors.blueGrey),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              runSpacing: 10,
              spacing: 10,
              children: <Widget>[
                TextButton(
                  onPressed: () {},
                  //style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                  child: const CustomWidget(
                    icon: Icons.language,
                    label: 'Open a URL',
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  //style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                  child: const CustomWidget(
                    icon: Icons.forward_to_inbox,
                    label: 'Send an email',
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  //style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                  child: const CustomWidget(
                    icon: Icons.call,
                    label: 'Call a phone\nnumber',
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  //style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                  child: const CustomWidget(
                    icon: Icons.textsms,
                    label: 'Send an SMS',
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  //style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                  child: const CustomWidget(
                    icon: Icons.near_me,
                    label: 'Check location',
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class CustomWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  const CustomWidget({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade100,
          borderRadius: BorderRadius.circular(4.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 35, color: Colors.blueGrey.shade700),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blueGrey.shade700),
          )
        ],
      ),
    );
  }
}
