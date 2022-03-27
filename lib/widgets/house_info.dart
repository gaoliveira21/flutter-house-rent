import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: const [
              _MenuInfo(
                imageUrl: 'assets/icons/bedroom.svg',
                content: '5 Bedroom\n3 Master Bedroom',
              ),
              _MenuInfo(
                imageUrl: 'assets/icons/bathroom.svg',
                content: '5 Bathroom\n3 Toilet',
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              _MenuInfo(
                imageUrl: 'assets/icons/kitchen.svg',
                content: '2 Kitchen\n120 sqft',
              ),
              _MenuInfo(
                imageUrl: 'assets/icons/parking.svg',
                content: '5 Parking\n120 sqft',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String content;

  const _MenuInfo({
    Key? key,
    required this.imageUrl,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SvgPicture.asset(imageUrl),
          const SizedBox(width: 20),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 12,
                ),
          ),
        ],
      ),
    );
  }
}
