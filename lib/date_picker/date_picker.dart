import 'package:flutter/material.dart';
import 'package:wui_flutter/styles/typography.dart';
import 'month_picker.dart';

const double _dayPickerRowHeight = 42.0;
const int _maxDayPickerRowCount = 6;
const double _maxDayPickerHeight = _dayPickerRowHeight * (_maxDayPickerRowCount + 1);

class WuiDatePicker extends StatefulWidget {

  final DateTime selectedDate;
  final Function(DateTime)? onChanged;

  const WuiDatePicker({super.key, required this.selectedDate, this.onChanged});

  @override
  State<WuiDatePicker> createState() => _WuiDatePickerState();
}

class _WuiDatePickerState extends State<WuiDatePicker> {

  final DateTime _currentDate = DateTime.now();

  late DateTime _initialMonth;
  late DateTime _firstDate;
  late DateTime _lastDate;

  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _initialMonth = DateTime(_currentDate.year, _currentDate.month, 1);
    _firstDate = _currentDate.subtract(const Duration(days: 30));
    _lastDate = _currentDate.add(const Duration(days: 30));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 16),
      child: SizedBox(
        height: _maxDayPickerHeight,
        child: DatePickerTheme(
          data: DatePickerThemeData(
            weekdayStyle: WuiTypography.defaultTextStyle.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 14.0
            ),
            dayStyle: WuiTypography.defaultTextStyle.copyWith(
              fontSize: 14.0
            )
          ),
          child: MonthPicker(
            initialMonth: _initialMonth, 
            onDisplayedMonthChanged: (DateTime value) {
              setState(() {
                _initialMonth = value;
              });
            },
      
            firstDate: _firstDate, 
            lastDate: _lastDate, 
            currentDate: _currentDate, 
            
            selectedDate: _selectedDate ?? widget.selectedDate, 
            onChanged: (DateTime value) {
              setState(() { _selectedDate = value; });
              if(widget.onChanged != null) widget.onChanged!(value);
            }
          ),
        ),
      ),
    );
  }
}