import 'dart:async';

/// Project MadayaS
/// Create by Madushanka Madakumbura on 11/11/21 13:25
enum BudgetStatus { initial, build, error }

class BudgetRepository {
  final _controller = StreamController<BudgetStatus>();

  Stream<BudgetStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield BudgetStatus.initial;
    yield* _controller.stream;
  }

  void dispose() => _controller.close();
}