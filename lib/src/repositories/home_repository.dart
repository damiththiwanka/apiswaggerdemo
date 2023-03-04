import 'dart:async';

/// Project MadayaS
/// Create by Madushanka Madakumbura on 11/11/21 13:25
enum HomeStatus { initial, build, error }

class HomeRepository {
  final _controller = StreamController<HomeStatus>();

  Stream<HomeStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield HomeStatus.initial;
    yield* _controller.stream;
  }

  void dispose() => _controller.close();
}