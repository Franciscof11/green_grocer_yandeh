import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_grocer_yandeh/core/utils/section_controller.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/cubit/section_cubit.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/sections_zone.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/web_header.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final sectionController = SectionController();
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          WebHeader(),
          BlocBuilder<SectionCubit, SectionState>(
            builder: (context, state) {
              if (state is SectionLoadingState) {
                return CircularProgressIndicator();
              }
              if (state is SectionErrorState) {
                return Center(
                  child: Text(state.message),
                );
              }
              if (state is SectionDataState) {
                return Expanded(
                  child: RefreshIndicator(
                    onRefresh: () =>
                        context.read<SectionCubit>().getAllSections(),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 16),
                          SectionsZone(isWeb: true),
                          SizedBox(height: 32),
                          ListView.builder(
                            itemCount: state.sections.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final section = state.sections[index];
                              return sectionController.checkSection(section);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
              return SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
