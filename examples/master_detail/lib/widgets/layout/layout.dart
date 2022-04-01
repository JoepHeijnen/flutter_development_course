import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:master_detail/widgets/layout/detail.dart';
import 'package:master_detail/widgets/layout/master.dart';

class Layout extends StatefulWidget {
  Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 768) {
          return _mobileLayout();
        } else {
          return const Master();
        }
      },
    );
  }

  Widget _mobileLayout() {
    return Row(
      children: const [
        SizedBox(width: 450, child: Master()),
        Expanded(child: Detail())
      ],
    );
  }
}
