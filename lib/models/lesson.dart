class Lesson {
  String name;
  String duration;
  bool isPlaying;
  bool isCompleted;

  Lesson({
    required this.duration,
    required this.isCompleted,
    required this.isPlaying,
    required this.name,
  });
}

List<Lesson> lessonList = [
  Lesson(
    duration: '5 phút',
    isCompleted: true,
    isPlaying: true,
    name: "C",
  ),
  Lesson(
    duration: '5 phút',
    isCompleted: true,
    isPlaying: false,
    name: "A /a/",
  ),
  Lesson(
    duration: '5 phút',
    isCompleted: true,
    isPlaying: false,
    name: "Ca",
  ),
  Lesson(
    duration: '5 phút',
    isCompleted: false,
    isPlaying: false,
    name: "Âm huyền",
  ),
  Lesson(
    duration: '5 phút',
    isCompleted: false,
    isPlaying: false,
    name: "Cà",
  ),
  Lesson(
    duration: '5 phút',
    isCompleted: false,
    isPlaying: false,
    name: "Âm sắc",
  ),
  Lesson(
    duration: '5 phút',
    isCompleted: false,
    isPlaying: false,
    name: "Cá",
  ),
];
