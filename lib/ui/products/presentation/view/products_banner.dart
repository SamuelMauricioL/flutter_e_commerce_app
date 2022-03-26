import 'package:e_commerce_app/ui/shared/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductsBanner extends StatelessWidget {
  const ProductsBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          margin: const EdgeInsets.only(top: 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: CustomColor.primary,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 14,
              left: 14,
              right: 14,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Music and No more',
                  style: TextStyle(
                    color: CustomColor.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  '10% off for One of the best\nheadphones in the world',
                  style: TextStyle(
                    color: CustomColor.white,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    primary: CustomColor.black,
                    backgroundColor: CustomColor.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    minimumSize: const Size(0, 45),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Order Now'),
                      const SizedBox(width: 4),
                      SvgPicture.asset(
                        'assets/icons/arrow_right.svg',
                        color: CustomColor.black,
                        height: 25,
                        width: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 14,
          bottom: 30,
          child: Image.asset(
            'assets/images/thumbnails_black.png',
            width: 120,
          ),
        ),
      ],
    );
  }
}
