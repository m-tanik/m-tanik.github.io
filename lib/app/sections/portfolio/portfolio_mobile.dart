import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mysite/app/utils/project_utils.dart';
import 'package:mysite/app/widgets/custom_text_heading.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/util/constants.dart';
import 'package:sizer/sizer.dart';

import 'widgets/project_card.dart';

class PortfolioMobileTab extends StatelessWidget {
  const PortfolioMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    ///new style
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nProjects"),
          Space.y(1.w)!,
          CustomSectionSubHeading(text: protfolioSubHeading),
          Space.y(2.w)!,
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            runSpacing: 3.w,
            children: projectUtils
                .asMap()
                .entries
                .map(
                  (e) => ProjectCard(project: e.value),
            )
                .toList(),
          ),
          Space.y(3.w)!,
          OutlinedButton(
            onPressed: () => openURL(gitHub),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'More Projects',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
        ///old one
    //   Column(
    //   children: [
    //     const CustomSectionHeading(text: "\nProjects"),
    //     Space.y(3.w)!,
    //     Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 10.w),
    //       child: CustomSectionSubHeading(text: protfolioSubHeading),
    //     ),
    //     Space.y(5.w)!,
    //     CarouselSlider.builder(
    //       itemCount: projectUtils.length,
    //       itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
    //         padding: const EdgeInsets.symmetric(vertical: 15.0),
    //         child: ProjectCard(project: projectUtils[i]),
    //       ),
    //       options: CarouselOptions(
    //         height: height * 0.4,
    //         autoPlay: true,
    //         autoPlayInterval: const Duration(seconds: 5),
    //         enlargeCenterPage: true,
    //         autoPlayCurve: Curves.fastOutSlowIn,
    //         autoPlayAnimationDuration: const Duration(milliseconds: 800),
    //         enableInfiniteScroll: false,
    //       ),
    //     ),
    //     Space.y(3.w)!,
    //     OutlinedButton(
    //       onPressed: () => openURL(gitHub),
    //       child: const Padding(
    //         padding: EdgeInsets.all(8.0),
    //         child: Text(
    //           'See More',
    //           style: TextStyle(
    //             fontSize: 16,
    //             fontWeight: FontWeight.w600,
    //           ),
    //         ),
    //       ),
    //     )
    //   ],
    // );
  }
}
