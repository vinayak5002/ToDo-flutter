

class Task {
  Task({required this.title, required this.desc, this.done = false});

  final String title;
  final String desc;
  late  bool done;

  void toggleDone(){
    done = !done;
  }
}