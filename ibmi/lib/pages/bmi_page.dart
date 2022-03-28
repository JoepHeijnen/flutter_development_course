import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibmi/utils/calculator.dart';
import 'package:ibmi/widgets/info_card.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BMIPage extends StatefulWidget {
  const BMIPage({Key? key}) : super(key: key);

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  int _age = 25;
  int _weight = 160;
  int _height = 70;
  int _gender = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
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
                  const SizedBox(width: 16),
                  _weightSelectContainer(),
                ],
              ),
              _gutter(),
              _heightSelectContainer(),
              _gutter(),
              _genderSelectContainer(),
              _gutter(),
              _calculateButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _gutter() {
    return const SizedBox(height: 16);
  }

  Widget _ageSelectContainer() {
    return Flexible(
      flex: 1,
      child: InfoCard(
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
      ),
    );
  }

  Widget _weightSelectContainer() {
    return Flexible(
      flex: 1,
      child: InfoCard(
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
                    key: const Key('weight_minus'),
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
                    key: const Key('weight_plus'),
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
      ),
    );
  }

  Widget _heightSelectContainer() {
    return Flexible(
      flex: 1,
      child: InfoCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Height in',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            Text(
              _height.toString(),
              style: const TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: double.infinity,
              child: CupertinoSlider(
                min: 0,
                max: 100,
                divisions: 100,
                value: _height.toDouble(),
                onChanged: (_value) {
                  setState(() {
                    _height = _value.toInt();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _genderSelectContainer() {
    return Flexible(
      flex: 1,
      child: InfoCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'gender',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            CupertinoSlidingSegmentedControl(
              groupValue: _gender,
              children: const {
                0: Text('Male'),
                1: Text('Female'),
              },
              onValueChanged: (_value) {
                setState(() {
                  _gender = _value as int;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _calculateButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: CupertinoButton.filled(
        child: const Text('Calculate BMI'),
        onPressed: () {
          if (_height > 0 && _weight > 0 && _age > 0) {
            double _bmi = calculateBMI(_height, _weight);
            _showResultDialog(_bmi);
          }
        },
      ),
    );
  }

  void _showResultDialog(double _bmi) {
    String? _status;

    if (_bmi < 18.5) {
      _status = 'Underweight';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      _status = 'Normal';
    } else if (_bmi >= 25 && _bmi < 30) {
      _status = 'Overweight';
    } else {
      _status = 'Obese';
    }

    showCupertinoDialog(
      context: context,
      builder: (BuildContext _context) {
        return CupertinoAlertDialog(
          title: Text(_status!),
          content: Text(_bmi.toStringAsFixed(2)),
          actions: [
            CupertinoDialogAction(
              child: const Text('Ok'),
              onPressed: () {
                _saveResult(_bmi.toString(), _status!);
                Navigator.pop(_context);
              },
            )
          ],
        );
      },
    );
  }

  void _saveResult(String _bmi, String _status) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('bmi_date', DateTime.now().toString());
    await prefs.setStringList('bmi_data', <String>[_bmi, _status]);
  }
}
