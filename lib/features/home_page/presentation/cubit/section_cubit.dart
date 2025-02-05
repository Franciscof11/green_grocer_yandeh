import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:green_grocer_yandeh/features/home_page/data/sections_repository.dart';
import 'package:green_grocer_yandeh/features/home_page/domain/models/section_model.dart';

part 'section_state.dart';

class SectionCubit extends Cubit<SectionState> {
  final SectionsRepository _repository;

  SectionCubit({required SectionsRepository repository})
      : _repository = repository,
        super(SectionInitialState());

  Future<void> getAllCars() async {
    try {
      emit(SectionLoadingState());

      final sections = await _repository.getAllSections();

      emit(SectionDataState(sections: sections));
    } catch (e) {
      log(
        'Erro!',
        error: e,
      );

      emit(
        const SectionErrorState(
          message: 'Erro!',
        ),
      );
    }
  }
}
