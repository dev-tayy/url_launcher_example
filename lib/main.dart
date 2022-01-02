import 'package:flutter/material.dart';
import 'package:url_launcher_example/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  onPressed: () async {
                    const url = 'https://blog.logrocket.com';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const CustomWidget(
                    icon: Icons.language,
                    label: 'Open a URL',
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    String email = 'this.is.tijani@gmail.com';
                    String subject = 'This is a test email';
                    String body = 'This is a test email body';
                    String emailUrl =
                        "mailto:$email?subject=$subject&body=$body";

                    if (await canLaunch(emailUrl)) {
                      await launch(emailUrl);
                    } else {
                      throw "Can't phone that number.";
                    }
                  },
                  child: const CustomWidget(
                    icon: Icons.forward_to_inbox,
                    label: 'Send an email',
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    String telephoneNumber = '+2347012345678';
                    String telephoneUrl = "tel:$telephoneNumber";

                    if (await canLaunch(telephoneUrl)) {
                      await launch(telephoneUrl);
                    } else {
                      throw "Error occured trying to call that number.";
                    }
                  },
                  child: const CustomWidget(
                    icon: Icons.call,
                    label: 'Call a phone\nnumber',
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    String telephoneNumber = '+2347012345678';
                    String smsUrl = "sms:$telephoneNumber";

                    if (await canLaunch(smsUrl)) {
                      await launch(smsUrl);
                    } else {
                      throw "Error occured trying to send a message that number.";
                    }
                  },
                  child: const CustomWidget(
                    icon: Icons.textsms,
                    label: 'Send an SMS',
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    const String lat = "42.3540";
                    const String lng = "71.0586";

                    const String mapUrl = "geo:$lat,$lng";

                    if (await canLaunch(mapUrl)) {
                      await launch(mapUrl);
                    } else {
                      throw "Couldn't launch Map";
                    }
                  },
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
