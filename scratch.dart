void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String? task2result = await task2();
  task3(task2result);
}

void task1() {
  String result = "Task 1 data";
  print("Task 1 complete");
}

Future<String?> task2() async {
  Duration fiveSeconds = const Duration(seconds: 5);
  // sleep(fiveSeconds);
  String? result;
  await Future.delayed(fiveSeconds, () {
    result = "Task 2 data";
    print("Task 2 complete");
  });
  return result;
}

void task3(String? task2result) {
  String result = "Task 3 data";
  print("Task 3 complete with $task2result");
}
