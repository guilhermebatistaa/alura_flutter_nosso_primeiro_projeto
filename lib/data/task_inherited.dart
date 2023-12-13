import 'package:flutter/material.dart';
import '../components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required this.child,
  }) : super(child: child);

  final Widget child;

  final List<Task> taskList = [
    Task('Aprender Flutter no café da manhã comendo sucrilhos', 'assets/images/1.png', 3),
    Task('Andar de Bike', 'assets/images/2.jpg', 2),
    Task('Meditar', 'assets/images/4.jpeg', 5),
    Task('Ler', 'assets/images/3.jpg', 4),
    Task('Jogar', 'assets/images/5.jpg', 1),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TaskInherited>();
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
