import 'dart:async';

/// Project MadayaS
/// Create by Madushanka Madakumbura on 11/11/21 13:24
enum BankStatus { initial, build, error }

class BankRepository {
  final _controller = StreamController<BankStatus>();

  Stream<BankStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield BankStatus.initial;
    yield* _controller.stream;
  }

  void dispose() => _controller.close();
}