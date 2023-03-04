import 'dart:async';

/// Project MadayaS
/// Create by Madushanka Madakumbura on 11/11/21 13:25
enum QRStatus { initial, build, error }

class QRRepository {
  final _controller = StreamController<QRStatus>();

  Stream<QRStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield QRStatus.initial;
    yield* _controller.stream;
  }

  void dispose() => _controller.close();
}