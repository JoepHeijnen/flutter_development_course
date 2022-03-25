import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibmi/widgets/info_card.dart';

class BMIPage extends StatefulWidget {
  const BMIPage({Key? key}) : super(key: key);

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  int _age = 25;
  int _weight = 160;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _ageSelectContainer(),
              _weightSelectContainer(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _ageSelectContainer() {
    return InfoCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Age yr',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          Text(
            _age.toString(),
            style: const TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: CupertinoDialogAction(
                  onPressed: () {
                    setState(() {
                      _age--;
                    });
                  },
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: CupertinoDialogAction(
                  onPressed: () {
                    setState(() {
                      _age++;
                    });
                  },
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _weightSelectContainer() {
    return InfoCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Weight obs',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          Text(
            _weight.toString(),
            style: const TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: CupertinoDialogAction(
                  onPressed: () {
                    setState(() {
                      _weight--;
                    });
                  },
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: CupertinoDialogAction(
                  onPressed: () {
                    setState(() {
                      _weight++;
                    });
                  },
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
