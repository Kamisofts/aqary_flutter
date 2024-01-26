import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

part 'api_call_event.dart';

part 'api_call_state.dart';

class ApiCallBloc extends Bloc<ApiCallEvent, ApiCallState> {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/posts/1';
  final int retryCount = 3;

  ApiCallBloc() : super(ApiCallInitial()) {
    on<FetchDataEvent>((event, emit) async {
      for (int i = 0; i < retryCount; i++) {
        emit(LoadingState());

        try {
          final response = await http.get(Uri.parse(apiUrl));

          if (response.statusCode == 200) {
            final data = response.body;
            emit(SuccessState(data));

            return; // Break out of the loop if successful
          } else {
            throw Exception('Failed to load data');
          }
        } catch (e) {
          emit(ErrorState('Attempt ${i + 1}: $e'));
        }

        // Wait for a short duration before retrying (you can adjust the duration)
        await Future.delayed(const Duration(seconds: 2));
      }
      emit(const ErrorState('All retry attempts failed'));
    });
  }
}
