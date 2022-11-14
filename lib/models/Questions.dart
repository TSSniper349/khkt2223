class Question {
  final int id, answer;
  final String question,fileName;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options, required this.fileName});
}

const List sample_data = [
  {
    "id": 0,
    "question": "Hãy chọn bên phải ?",
    "options": ['Trái', 'Phải'],
    "fileName": "haychonbenphai.mp3",
    "answer_index": 1,
  },
  {
    "id": 1,
    "question": "Hãy chọn bên trái ?",
    "options": ['Trái', 'Phải'],
    "fileName": "haychonbentrai.mp3",
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Hãy chọn bên phải ?",
    "options": ['Trái', 'Phải'],
    "fileName": "haychonbenphai.mp3",
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Hãy chọn từ tương ứng với bức hình sau đây:",
    "options": ['Con bò', 'Con dò'],
    "fileName": "cow",
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "Hãy chọn từ tương ứng với bức hình sau đây:",
    "options": ['Trái dóng', 'Trái bóng'],
    "fileName": "ball",
    "answer_index": 1,
  },
  {
    "id": 5,
    "question": "Hãy chọn từ tương ứng với bức hình sau đây:",
    "options": ['Cái dĩa', 'Cái bĩa'],
    "fileName": "plate",
    "answer_index": 0,
  },
  {
    "id": 6,
    "question": "1 + 2 =",
    "options": ['           6','           3','           8','           2'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "5 - 3 =",
    "options": ['           2','           5','           3','           7'],
    "answer_index": 0,
  },
  {
    "id": 8,
    "question": "2 + 7 =",
    "options": ['           3','           2','           6','           9'],
    "answer_index": 3,
  },
  {
    "id": 9,
    "question": "Bốn mươi bảy",
    "options": ['47', '74'],
    "fileName": "47.mp3",
    "answer_index": 0,
  },
  {
    "id": 10,
    "question": "Ba mươi sáu",
    "options": ['63', '36'],
    "fileName": "36.mp3",
    "answer_index": 1,
  },
  {
    "id": 11,
    "question": "Năm mươi hai",
    "options": ['25', '52'],
    "fileName": "52.mp3",
    "answer_index": 1,
  },
  {
    "id": 12,
    "question": "Phần dành cho bố mẹ",
    "options": ["Tôi đã sẵn sàng"],
    "answer_index": 0,
  },
  {
    "id": 13,
    "question": "Con có hay viết chữ bị ngược",
    "options": ["Có","Không"],
    "fileName": "concohayvietchubinguoc.mp3",
    "answer_index": 1,
  },

  {
    "id": 14,
    "question": "Con có gặp khó khăn trong việc ghi nhớ từ mới đọc",
    "options": ["Có","Không"],
    "fileName": "concogapkhokhantrongviecghinhotumoidoc.mp3",
    "answer_index": 1,
  },
  {
    "id": 15,
    "question": "Con có gặp khó khăn trong việc hiểu nghĩa một từ vựng sau khi đọc xong",
    "options": ["Có","Không"],
    "fileName": "concogapkhokhankhihieunghiamottuvungsaukhidocxong.mp3",
    "answer_index": 1,
  },
  {
    "id": 16,
    "question": "Con có gặp khó khăn trong việc nhớ thời gian biểu",
    "options": ['Có','Không'],
    "fileName": "concogapkhokhankhighinhothoigianbieu.mp3",
    "answer_index": 1,
  },
  {
    "id": 17,
    "question": "Con có thích đọc sách nếu nó quá dài",
    "options": ['Có','Không'],
    "fileName": "concothichdocsachneunoquadai.mp3",
    "answer_index": 0,
  },
  {
    "id": 18,
    "question": "Con tiếp thu thông tin dễ hơn khi được nghe hơn là đọc",
    "options": ['Có','Không'],
    "fileName": "contiepthuthongtindehonkhiduocnghehonladoc.mp3",
    "answer_index": 1,
  },
  {
    "id": 19,
    "question": "Lúc đọc sách thì con không thích đọc to ra",
    "options": ['Có','Không'],
    "fileName": "lucdocsachthiconkhonthichdoctora.mp3",
    "answer_index": 1,
  },
  {
    "id": 20,
    "question": "Con có hay quên nếu thông tin quá dài",
    "options": ['Có','Không'],
    "fileName": "concohayquenneuthongtinquadai.mp3",
    "answer_index": 1,
  },
  {
    "id": 21,
    "question": "Con có gặp khó khăn khi làm toán mà không có giấy hay đếm",
    "options": ['Có','Không'],
    "fileName": "concogapkhokhankhilamtoanmakhongdunggiayhaydem.mp3",
    "answer_index": 1,
  },
  {
    "id": 22,
    "question": "Con đánh vần từ khá kém",
    "options": ['Có','Không'],
    "fileName": "condanhvantukhakem.mp3",
    "answer_index": 1,
  },
];
