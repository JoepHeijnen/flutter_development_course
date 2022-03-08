import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  final List<String> values;
  final double width;

  const CustomDropDownButton(
      {Key? key, required this.values, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(bottom: 16),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        value: values.first,
        onChanged: (_) {},
        items: values.map((e) {
          return DropdownMenuItem(child: Text(e), value: e);
        }).toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
