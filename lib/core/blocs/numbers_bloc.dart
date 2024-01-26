import 'dart:async';
import 'dart:math';

class NumbersBloc {
  final StreamController<int> _numbersController = StreamController<int>();

  NumbersBloc() {
    _startGeneratingNumbers();
  }

  Stream<int> get numbersStream => _numbersController.stream;

  void _startGeneratingNumbers() async {
    final random = Random();
    while (true) {
      final randomNumber = random.nextInt(100);
      _numbersController.add(randomNumber);
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  void dispose() {
    _numbersController.close();
  }
}