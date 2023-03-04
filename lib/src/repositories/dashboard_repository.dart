import 'dart:async';

/// Project MadayaS
/// Create by Madushanka Madakumbura on 11/11/21 13:01
enum DashboardStatus { initial, build, error }

class DashboardRepository {
  final _controller = StreamController<DashboardStatus>();

  Stream<DashboardStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield DashboardStatus.initial;
    yield* _controller.stream;
  }

  void dispose() => _controller.close();
}