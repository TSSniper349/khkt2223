import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:khkt2223/models/lesson.dart';
import 'package:flutter/material.dart';
import 'package:khkt2223/theme/icons.dart';
import 'package:another_audio_recorder/another_audio_recorder.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

class LessonCard extends StatelessWidget {
  final Lesson lesson;

  const LessonCard({Key? key, required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer _timer;
    int _start = 10;
    const oneSec = Duration(seconds: 10);

    return Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        child: Row(
          children: [
            GestureDetector(
              //style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.transparent)),
              onTap: () => AudioPlayer().play(AssetSource('sounds/${lesson.fileName}')),
              child: lesson.isPlaying
                  ? Image.asset(
                icLearning,
                height: 45,
              )
                  : Image.asset(
                icPlayNext,
                height: 45,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lesson.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    lesson.duration,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () async {
                bool hasPermission = await AnotherAudioRecorder.hasPermissions;
                var recorder = AnotherAudioRecorder("record.mp4"); // .wav .aac .m4a
                await recorder.initialized;
                await recorder.start();

                _timer = Timer(oneSec, () async {
                  var result = await recorder.stop();
                  if (result != null) {
                    print(result.path!);
                    // File file = File(result.path!);

                    var postUri = Uri.parse("http://127.0.0.1:5000/");
                    var request = http.MultipartRequest("GET", postUri);
                    request.fields['user'] = 'blah';
                    request.files.add(http.MultipartFile.fromBytes(
                        'file', await File.fromUri(Uri.parse(result.path!)).readAsBytes(),
                        contentType: MediaType('video', 'mp4')));

                    request.send().then((response) {
                      if (response.statusCode == 200) print("Uploaded!");
                    });
                  }
                });
              },
              child: lesson.isCompleted
                  ? Image.asset(
                icDone,
                height: 30,
              )
                  : Image.asset(
                icLock,
                height: 30,
              ),
            ),
          ],
        ),
    );
  }
}
