import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imagebackground, this.imageColor});
  final String image;
  final Color? imagebackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: imagebackground ?? const Color(0xfffafafa),
                  shape: const OvalBorder(),
                ),
                child: Center(
                    child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: imageColor == null
                        ? const ColorFilter.mode(
                            Color(0xff4EB7F2), BlendMode.srcIn)
                        : const ColorFilter.mode(
                            Color(0xffFFFFFF), BlendMode.srcIn),
                  ),
                )),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.6 * 2,
          child: Icon(Icons.arrow_back_ios_new_outlined,
              color: imagebackground == null ? Colors.black : Colors.white),
        ),
      ],
    );
  }
}
