import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class BikePageState extends Equatable {
  int currentIndex;

  BikePageState({this.currentIndex = 0});

  BikePageState copyWith({int? currentIndex}) {
    return BikePageState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }

  @override
  List<Object?> get props => [currentIndex];
}
