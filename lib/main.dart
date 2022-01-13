import 'package:flutter/material.dart';
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
      debugShowCheckedModeBanner: false,
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
        backgroundColor: const Color(0xFF3E1F92),
        body: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Get in touch',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10.0),
                  const Text(
                      "We'd love to hear from you. Our friendly team is always here to chat.",
                      style: TextStyle(
                          color: Color(0xFFA895D1),
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal)),
                  const SizedBox(height: 30.0),
                  TextButton(
                    onPressed: () async {
                      String telephoneNumber = '+012345678910';
                      String telephoneUrl = "tel:$telephoneNumber";

                      if (await canLaunch(telephoneUrl)) {
                        await launch(telephoneUrl);
                      } else {
                        throw "Error occured trying to call that number.";
                      }
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.phone, color: Color(0xFFED92A2)),
                        SizedBox(width: 20.0),
                        Text('+0123 4567 8910',
                            style: TextStyle(
                                color: Color(0xFFA294C2),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      String telephoneNumber = '+012345678910';
                      String smsUrl = "sms:$telephoneNumber";

                      if (await canLaunch(smsUrl)) {
                        await launch(smsUrl);
                      } else {
                        throw "Error occured trying to send a message that number.";
                      }
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.sms, color: Color(0xFFED92A2)),
                        SizedBox(width: 20.0),
                        Text('+0123 4567 8910',
                            style: TextStyle(
                                color: Color(0xFFA294C2),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      String email = 'example@logrocket.com';
                      String subject = 'This is a test email';
                      String body = 'This is a test email body';
                      String emailUrl =
                          "mailto:$email?subject=$subject&body=$body";

                      if (await canLaunch(emailUrl)) {
                        await launch(emailUrl);
                      } else {
                        throw "Error occured trying to send an email.";
                      }
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.mail, color: Color(0xFFED92A2)),
                        SizedBox(width: 20.0),
                        Text('example@logrocket.com',
                            style: TextStyle(
                                color: Color(0xFFA294C2),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      const String lat = "42.3540";
                      const String lng = "-71.0586";

                      const String mapUrl = "geo:$lat,$lng";

                      if (await canLaunch(mapUrl)) {
                        await launch(mapUrl);
                      } else {
                        throw "Couldn't launch Map";
                      }
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.location_pin, color: Color(0xFFED92A2)),
                        SizedBox(width: 20.0),
                        Text('87 Summer St., Boston, MA 02110',
                            style: TextStyle(
                                color: Color(0xFFA294C2),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      const url = 'https://blog.logrocket.com';
                      if (await canLaunch(url)) {
                        await launch(url, forceWebView: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.language, color: Color(0xFFED92A2)),
                        SizedBox(width: 20.0),
                        Text('blog.logrocket.com',
                            style: TextStyle(
                                color: Color(0xFFA294C2),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(150, 300),
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFED92A2)),
              ),
            ),
            Transform.translate(
              offset: const Offset(150, 500),
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xF17E53FA)),
              ),
            )
          ],
        ));
  }
}
