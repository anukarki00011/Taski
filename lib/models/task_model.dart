class TaskModel {
  TaskModel({
    required this.title,
    required this.description,
    required this.isDone,
    required this.id,
  });

  final String title;
  final String description;
  final bool isDone;
  final int id;
}
