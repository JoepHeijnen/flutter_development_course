import 'package:flutter/cupertino.dart';
import 'package:ibmi/widgets/info_card.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: _dataCard(),
    );
  }

  Widget _dataCard() {
    return FutureBuilder(
      future: SharedPreferences.getInstance(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          SharedPreferences _prefs = snapshot.data as SharedPreferences;
          String? _date = _prefs.getString('bmi_date');
          List<String>? _data = _prefs.getStringList('bmi_data');

          return Center(
            child: FractionallySizedBox(
              widthFactor: 0.75,
              heightFactor: 0.25,
              child: InfoCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _statusText(_data![1]),
                    _dateText(_date!),
                    _bmiText(_data[0]),
                  ],
                ),
              ),
            ),
          );
        } else {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
      }),
    );
  }

  Widget _statusText(String _status) {
    return Text(
      _status,
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
    );
  }

  Widget _dateText(String _date) {
    DateTime _parseDate = DateTime.parse(_date);
    return Text(
      '${_parseDate.day} - ${_parseDate.month} - ${_parseDate.year}',
      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
    );
  }

  Widget _bmiText(String _bmi) {
    return Text(
      double.parse(_bmi).toStringAsFixed(2),
      style: const TextStyle(fontSize: 60, fontWeight: FontWeight.w400),
    );
  }
}
