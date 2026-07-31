import 'package:flutter/cupertino.dart';
import '../models/task_model.dart';
import '../widgets/add_task_sheet.dart';

class TaskProvider extends ChangeNotifier {
  List<TaskModel> get doneTasks => allTasks.where((t) => t.isDone).toList();

  List<TaskModel> allTasks = [
    TaskModel(
      id: 1,
      title: 'Design signup flow',
      description:
      "By the time a prospect arrives at your signup page, in most cases, they've already By the time a prospect arrives at your signup page, in most cases.",
      isDone: false,
    ),
    TaskModel(
      id: 2,
      title: 'Design use case page',
      description:
      "By the time a prospect arrives at your signup page, in most cases, they've already By the time a prospect arrives at your signup page, in most cases.",
      isDone: true,
    ),
    TaskModel(
      id: 3,
      title: 'Test Wireframe',
      description:
      "By the time a prospect arrives at your signup page, in most cases, they've already By the time a prospect arrives at your signup page, in most cases.",
      isDone: true,
    ),
    TaskModel(
      id: 4,
      title: 'Create new task ui flow',
      description:
      "By the time a prospect arrives at your signup page, in most cases, they've already By the time a prospect arrives at your signup page, in most cases.",
      isDone: true,
    ),
    TaskModel(
      id: 5,
      title: "collect project assests ",
      description:
      "By the time a prospect arrives at your signup page, in most cases, they've already By the time a prospect arrives at your signup page, in most cases.",
      isDone: false,
    ),
    TaskModel(
      id: 6,
      title: 'collect skill tests',
      description:
      "By the time a prospect arrives at your signup page, in most cases, they've already By the time a prospect arrives at your signup page, in most cases.",
      isDone: false,
    ),
    // TaskModel(
    //   title: 'halo',
    //   description: 'hello from the other side ',
    //   isDone: false,
    // ),
  ];
  addTask({required String title, String? description}) {
    // final int id = DateTime.now().microsecondsSinceEpoch;
    // print('id : $id');
    allTasks.add(
      TaskModel(
        id: DateTime.now().microsecondsSinceEpoch,
        title: title,
        description: description ?? "",
        // "By the time a prospect arrives at your signup page, in most cases, they've already By the time a prospect arrives at your signup page, in most cases.",
        isDone: false,
      ),
    );
    notifyListeners();
  }

  notifyListeners();
  void deleteTasks(int taskId) {
    allTasks.removeWhere((t) {
      return t.id == taskId;
    });
    notifyListeners();
  }

  void deleteAllTasks() {
    allTasks.removeWhere((t) => t.isDone);
    notifyListeners();
  }
}
