import 'package:flutter/material.dart';
import '../models/exam.dart';
import '../widgets/exam_card.dart';
import '../widgets/custom_badge.dart';
class ExamsListScreen extends StatelessWidget {
  final String indexNumber;

  ExamsListScreen({required this.indexNumber});

  final List<Exam> exams = [
    Exam(subjectName: "Математика", dateTime: DateTime(2025, 11, 15, 9, 0), rooms: ["101", "102"]),
    Exam(subjectName: "Програмирање", dateTime: DateTime(2025, 11, 16, 11, 0), rooms: ["201"]),
    Exam(subjectName: "Физика", dateTime: DateTime(2025, 11, 17, 10, 0), rooms: ["301"]),
    Exam(subjectName: "Хемија", dateTime: DateTime(2025, 11, 18, 8, 0), rooms: ["105"]),
    Exam(subjectName: "Информатика", dateTime: DateTime(2025, 11, 19, 13, 0), rooms: ["204", "205"]),
    Exam(subjectName: "Економија", dateTime: DateTime(2025, 11, 20, 12, 0), rooms: ["303"]),
    Exam(subjectName: "Филозофија", dateTime: DateTime(2025, 11, 21, 9, 0), rooms: ["401", "402"]),
    Exam(subjectName: "Историја", dateTime: DateTime(2025, 11, 22, 14, 0), rooms: ["102"]),
    Exam(subjectName: "Биологија", dateTime: DateTime(2025, 11, 23, 11, 0), rooms: ["203"]),
    Exam(subjectName: "Географија", dateTime: DateTime(2025, 11, 24, 10, 0), rooms: ["304"]),
  ];

  @override
  Widget build(BuildContext context) {
    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
      appBar: AppBar(
        title: Text('Распоред за испити - $indexNumber'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: exams.length,
              itemBuilder: (ctx, index) => ExamCard(exam: exams[index]),
            ),
          ),
          CustomBadge(label: 'Вкупно испити: ${exams.length}'), // Користете новото име
        ],
      ),
    );
  }
}