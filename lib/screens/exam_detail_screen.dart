import 'package:flutter/material.dart';
import '../models/exam.dart';

class ExamDetailScreen extends StatelessWidget {
  final Exam exam;

  ExamDetailScreen({required this.exam});

  @override
  Widget build(BuildContext context) {
    final remainingDuration = exam.dateTime.difference(DateTime.now());
    final days = remainingDuration.inDays;
    final hours = remainingDuration.inHours % 24;

    return Scaffold(
      appBar: AppBar(
        title: Text('Детали за испит: ${exam.subjectName}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Предмет: ${exam.subjectName}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Датум и Време: ${exam.dateTime}'),
            SizedBox(height: 10),
            Text('Простории: ${exam.rooms.join(', ')}'),
            SizedBox(height: 10),
            Text('Преостанато време: ${days} дена, ${hours} часа'),
          ],
        ),
      ),
    );
  }
}