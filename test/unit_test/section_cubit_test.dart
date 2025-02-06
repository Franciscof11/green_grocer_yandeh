import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_grocer_yandeh/features/home_page/data/sections_repository.dart';
import 'package:green_grocer_yandeh/features/home_page/domain/models/section_model.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/cubit/section_cubit.dart';
import 'package:mocktail/mocktail.dart';

class MockSectionRepository extends Mock implements SectionsRepository {}

void main() {
  late MockSectionRepository repository;

  late SectionCubit cubit;

  late List<SectionModel> sections;

  setUp(
    () {
      repository = MockSectionRepository();
      cubit = SectionCubit(repository: repository);
      sections = [
        SectionModel.empty(),
        SectionModel.empty(),
        SectionModel.empty(),
      ];
    },
  );

  blocTest<SectionCubit, SectionState>(
    'Test the get list of sections function from bloc and repository instance.',
    setUp: () {
      when(() => repository.getAllSections()).thenAnswer(
        (invocation) async => sections,
      );
    },
    build: () => cubit,
    act: (bloc) => cubit.getAllSections(),
    expect: () => [
      TypeMatcher<SectionLoadingState>(),
      TypeMatcher<SectionDataState>(),
    ],
  );
}
