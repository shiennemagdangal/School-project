import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _current = 0;

  final cont = [
    
    TableBasicsExample(),
    
    CalcButton(),
    
 ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.calendar_today_outlined), 
        title: Text('My Third Quater Exam'),
        ),
        
        body: cont[_current],
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: _current,
        selectedFontSize: 20,
        iconSize: 25,
        
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_rounded),
                label: ('Calendar'),
                backgroundColor: Colors.amberAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
                label: ('Calculator'),
                backgroundColor: Colors.amberAccent),

          ],
         
          onTap: (index) {
            setState(() {
              _current = index;
            });
          },

        ),
        
      ),
    );
  }
}


class TableBasicsExample extends StatefulWidget {
  @override
  _TableBasicsExampleState createState() => _TableBasicsExampleState();
}

class _TableBasicsExampleState extends State<TableBasicsExample> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Calendar'),
      ),
      body: TableCalendar(
        firstDay: DateTime(1990), 
          lastDay: DateTime(2025),
        focusedDay: _focusedDay,
        calendarFormat: _calendarFormat,
        selectedDayPredicate: (day) {
          // Use `selectedDayPredicate` to determine which day is currently selected.
          // If this returns true, then `day` will be marked as selected.

          // Using `isSameDay` is recommended to disregard
          // the time-part of compared DateTime objects.
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            // Call `setState()` when updating the selected day
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          }
        },
        onFormatChanged: (format) {
          if (_calendarFormat != format) {
            // Call `setState()` when updating calendar format
            setState(() {
              _calendarFormat = format;
            });
          }
        },
        onPageChanged: (focusedDay) {
          // No need to call `setState()` here
          _focusedDay = focusedDay;
        },
      ),
    );
  }
}


class CalcButton extends StatefulWidget {
  @override
  _CalcButtonState createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Calculator'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: double.infinity,
            child: SimpleCalculator(
      value: _currentValue,
      hideExpression: false,
      hideSurroundingBorder: true,
      onChanged: (key, value, expression) {
        setState(() {
          _currentValue = value ?? 0;
        });
        print("$key\t$value\t$expression");
      },
      onTappedDisplay: (value, details) {
        print("$value\t${details.globalPosition}");
      },
      theme: const CalculatorThemeData(
        borderColor: Colors.black,
        borderWidth: 2,
        displayColor: Colors.black,
        displayStyle: const TextStyle(fontSize: 80, color: Colors.yellow),
        expressionColor: Colors.indigo,
        expressionStyle: const TextStyle(fontSize: 20, color: Colors.white),
        operatorColor: Colors.pink,
        operatorStyle: const TextStyle(fontSize: 30, color: Colors.white),
        commandColor: Colors.orange,
        commandStyle: const TextStyle(fontSize: 30, color: Colors.white),
        numColor: Colors.grey,
        numStyle: const TextStyle(fontSize: 50, color: Colors.white),
      ),
    ),
  
          ),
        ),
   
    
    );
    
  }
}