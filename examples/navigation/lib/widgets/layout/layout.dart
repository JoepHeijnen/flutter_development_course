import 'package:flutter/material.dart';
import 'package:navigation/widgets/layout/detail.dart';
import 'package:navigation/widgets/layout/master.dart';

class Layout extends StatefulWidget {
  final Widget? child;
  Layout({Key? key, this.child}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 768) {
          return _tabletLayout();
        } else {
          return const Master();
        }
      },
    );
  }

  Widget _tabletLayout() {
    return Row(
      children: [
        SizedBox(width: 450, child: Master()),
        Expanded(child: widget.child ?? Detail())
      ],
    );
  }
}
