

class Task {
  Task({required this.title, required this.desc, this.done = false});

  late String title;
  late String desc;
  late  bool done;

  void toggleDone(){
    done = !done;
  }

  Task.fromMap(Map map){
    this.title = map["title"];
    this.desc = map["desc"];
    this.done = map["done"];
  }

  Map toMap(){
    return {
      'title' : this.title,
      'desc' : this.desc,
      'done' : this.done
    };
  }
}