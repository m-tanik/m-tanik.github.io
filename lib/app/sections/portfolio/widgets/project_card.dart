import 'package:flutter/material.dart';
import 'package:mysite/app/utils/project_utils.dart';
import 'package:mysite/core/color/colors.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/res/responsive.dart';
import 'package:mysite/core/util/constants.dart';
import 'package:sizer/sizer.dart';

class ProjectCard extends StatefulWidget {
  final ProjectUtils project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => openURL(widget.project.links),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1.w),
        width: Responsive.isDesktop(context) ? 30.w : 70.w,
        height: 60.h,
        decoration: BoxDecoration(
          gradient: (Responsive.isTablet(context) || Responsive.isMobile(context) ) ? grayBack :isHover ? pinkpurple : grayBack,
          borderRadius: BorderRadius.circular(10),
          boxShadow: (Responsive.isTablet(context) || Responsive.isMobile(context) ) ? [primaryColorShadow] :isHover ? [primaryColorShadow] : [blackColorShadow],
        ),
        child: Column(
          // fit: StackFit.expand,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                // gradient: (Responsive.isTablet(context) || Responsive.isMobile(context) ) ? pinkpurple :isHover ? pinkpurple : grayBack,
                borderRadius: BorderRadius.circular(10),

                gradient: pinkpurple,
                boxShadow: (Responsive.isTablet(context) || Responsive.isMobile(context) ) ? [primaryColorShadow] :isHover ? [primaryColorShadow] : [blackColorShadow],
              ),
              width: Responsive.isDesktop(context) ? 30.w : 70.w,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      widget.project.icons,
                      height: height * 0.05,
                    ),
                    SizedBox(height: height * 0.02),
                    Text(
                      widget.project.titles,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: (Responsive.isTablet(context) || Responsive.isMobile(context) ) ? whiteColor: isHover ? whiteColor : theme.textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      widget.project.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: (Responsive.isTablet(context) || Responsive.isMobile(context) ) ? whiteColor:isHover ? whiteColor : theme.textColor,
                        fontSize: Responsive.isTablet(context) ? 10 : Responsive.isMobile(context)  ?8 : 12,
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity:   isHover ? 0.1 : 1.0,
              child: Container(
                width: Responsive.isDesktop(context) ? 40.w : 70.w,
                height: Responsive.isDesktop(context) ? 30.h : Responsive.isMobile(context) ? 26.h : 26.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(widget.project.banners),
                      fit: BoxFit.cover),
                ),
                // child: Image.asset(
                //   widget.project.banners,
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
