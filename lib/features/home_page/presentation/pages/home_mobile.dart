import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_grocer_yandeh/core/constants/const_colors.dart';
import 'package:green_grocer_yandeh/features/home_page/data/sections_repository.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/cubit/section_cubit.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/mobile_header.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/products_block.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/sections_zone.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/separator_block.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          MobileHeader(),
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
                          SectionsZone(),
                          ListView.builder(
                              itemCount: state.sections.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                final section = state.sections[index];
                                return ProductsBlock(
                                  title: section.title,
                                  bgColor: vegetablesGreen,
                                );
                              }),
                          // ProductsBlock(
                          //   title: 'Em promoção',
                          //   bgColor: redProductBlock,
                          // ),
                          GestureDetector(
                            onTap: () async {
                              final rep = SectionsRepository();
                              final sections = await rep.getAllSections();

                              sections.forEach(
                                (element) {
                                  print('#################');
                                  print(element.toString());
                                },
                              );
                            },
                            child: SeparatorBlock(),
                          ),
                          SizedBox(height: 50),
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
