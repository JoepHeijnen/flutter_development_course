import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final Widget child;
  final int flex;

  const InfoCard({Key? key, required this.child, required this.flex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
