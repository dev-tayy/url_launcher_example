import 'package:flutter/material.dart';

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
