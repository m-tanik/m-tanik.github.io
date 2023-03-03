part of 'services.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    ///new one
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8)
          .copyWith(bottom: size.height * 0.2),
      child: Column(
        children: [
          const CustomSectionHeading(text: '\nWhat I can do?'),
          Space.y(1.w)!,
          CustomSectionSubHeading(text: servicesSubHeading),
          Space.y(2.w)!,
          Wrap(
            spacing: size.width * 0.03,
            runSpacing: size.height * 0.05,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: servicesUtils
                .asMap()
                .entries
                .map(
                  (e) => _ServiceCard(service: e.value),
            )
                .toList(),
          )
        ],
      ),
    );
      ///old one
    //   Column(
    //   children: [
    //     const CustomSectionHeading(text: '\nWhat I can do?'),
    //     Space.y(3.w)!,
    //     Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 10.w),
    //       child: CustomSectionSubHeading(text: servicesSubHeading),
    //     ),
    //     Space.y(5.w)!,
    //     CarouselSlider.builder(
    //       itemCount: servicesUtils.length,
    //       itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
    //         padding: EdgeInsets.symmetric(vertical: 0.5.w),
    //         child: _ServiceCard(service: servicesUtils[i]),
    //       ),
    //       options: CarouselOptions(
    //         viewportFraction: 0.6,
    //         height: 300,
    //         autoPlay: true,
    //         autoPlayInterval: const Duration(seconds: 5),
    //         enlargeCenterPage: true,
    //         autoPlayCurve: Curves.fastOutSlowIn,
    //         autoPlayAnimationDuration: const Duration(milliseconds: 800),
    //         enableInfiniteScroll: false,
    //       ),
    //     )
    //   ],
    // );
  }
}
