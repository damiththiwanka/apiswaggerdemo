import 'dart:async';

/// Project MadayaS
/// Create by Madushanka Madakumbura on 11/11/21 13:24
enum RecentStatus { initial, build, error }

class RecentRepository {
  final _controller = StreamController<RecentStatus>();

  Stream<RecentStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield RecentStatus.initial;
    yield* _controller.stream;
  }

  void dispose() => _controller.close();
}