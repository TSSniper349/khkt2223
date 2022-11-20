class Lesson {
  String name;
  String duration;
  bool isPlaying;
  bool isCompleted;
  String fileName;

  Lesson({
    required this.duration,
    required this.isCompleted,
    required this.isPlaying,
    required this.name,
    required this.fileName
  });
}

List<Lesson> lessonList = [
  Lesson(
    duration: '5 phút',
    isCompleted: true,
    isPlaying: true,
    name: "C /k/",
    fileName: "C.mp3",
  ),
  Lesson(
    duration: '5 phút',
    isCompleted: true,
    isPlaying: false,
    name: "A /a/",
    fileName: "A.mp3",
  ),
  Lesson(
    duration: '5 phút',
    isCompleted: true,
    isPlaying: false,
    name: "Ca /ka/",
    fileName: "Ca.mp3",
  ),
  Lesson(
    duration: '5 phút',
    isCompleted: true,
    isPlaying: false,
    name: "Cá",
    fileName: "Cá.mp3",
  ),
];
