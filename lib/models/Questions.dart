class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Hãy chọn bên phải ?",
    "options": ['Trái', 'Phải'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Hãy chọn bên trái ?",
    "options": ['Trái', 'Phải'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "Hãy chọn bên phải ?",
    "options": ['Trái', 'Phải'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Chọn từ tương ứng với bức hình sau đây:",
    "options": ['Con bò', 'Con dò'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "1 + 2 =",
    "options": ['           4','           3','           1','           2'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "5 - 3 =",
    "options": ['           2','           3','           1','           8'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "2 + 7 =",
    "options": ['           8','           5','           10','           9'],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": "Con có gặp khó khăn trong việc nhớ thời khóa biểu",
    "options": ['Có','Không'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "Con có thích đọc sách không ?",
    "options": ['Có','Không'],
    "answer_index": 0,
  },
  {
    "id": 10,
    "question": "Lúc đọc sách thì con không thích đọc to ra",
    "options": ['Có','Không'],
    "answer_index": 1,
  },
  {
    "id": 11,
    "question": "Con có gặp khó khăn khi làm toán mà không có giấy hay đếm không?",
    "options": ['Có','Không'],
    "answer_index": 1,
  },
];
