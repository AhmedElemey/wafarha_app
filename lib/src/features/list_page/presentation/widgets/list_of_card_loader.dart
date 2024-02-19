import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfCardsLoader extends StatelessWidget {
  const ListOfCardsLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        // alignment: WrapAlignment.spaceBetween,
        // runAlignment: WrapAlignment.start,

        // runSpacing: 8.h,
        // spacing: 8.w,
        children: List.generate(
            4,
            (index) => Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
                  height: 124.h,
                  color: Colors.grey,
                )),
      ),
    )
        .animate(
          onComplete: (controller) => controller.repeat(),
        )
        .shimmer(
          angle: 30.0,
          colors: [
            const Color(0xffF5F5F5),
            const Color(0xfffafafa),
            const Color(0xffF2F4F7)
          ],
          duration: const Duration(
            milliseconds: 1200,
          ),
        );
  }
}
