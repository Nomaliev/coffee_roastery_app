import 'package:equatable/equatable.dart';

class OnboardingCubitState extends Equatable {
  final int currentIndex;

  const OnboardingCubitState({this.currentIndex = 0});
  @override
  List<Object?> get props => [currentIndex];
}
