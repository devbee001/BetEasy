import 'package:bet_easy/features/home/presentation/notifier/bike_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bikePageProvider = StateNotifierProvider<BikePageNotifier, BikePageState>(
    (ref) => BikePageNotifier());

class BikePageNotifier extends StateNotifier<BikePageState> {
  BikePageNotifier() : super(BikePageState());

  void updateIndex(int newIndex) {
    state = state.copyWith(currentIndex: newIndex);
  }
}
