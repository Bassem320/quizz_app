import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Question....'),
          const SizedBox(height: 30,),
          ElevatedButton(onPressed: (){}, child: const Text('Answer1'),),
          ElevatedButton(onPressed: (){}, child: const Text('Answer2'),),
          ElevatedButton(onPressed: (){}, child: const Text('Answer3'),),
          ElevatedButton(onPressed: (){}, child: const Text('Answer4'),),
        ],
      ),
    );
  }
}
