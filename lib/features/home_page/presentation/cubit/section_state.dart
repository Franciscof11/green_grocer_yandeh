part of 'section_cubit.dart';

class SectionState {
  const SectionState();
}

class SectionInitialState extends SectionState {}

class SectionLoadingState extends SectionState {}

class SectionDataState extends SectionState {
  final List<SectionModel> sections;
  const SectionDataState({required this.sections});
}

class SectionErrorState extends SectionState {
  final String message;
  const SectionErrorState({required this.message});
}
