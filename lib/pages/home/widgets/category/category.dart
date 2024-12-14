import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/widgets/category/newest.dart';
import 'package:gamestore/pages/home/widgets/category/popular.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categories = [
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF9776F3),
      'title': 'Arcade',
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': const Color(0xFFE476F3),
      'title': 'Racing',
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0xFFFDCC00),
      'title': 'Strategy',
    },
    {
      'icon': Icons.sports_esports,
      'color': const Color(0xFF3DAE59),
      'title': 'More',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xFFE8E8E8),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 160,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: categories[index]['color'] as Color,
                          ),
                          child: Icon(
                            categories[index]['icon'] as IconData,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          categories[index]['title'] as String,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    )),
                separatorBuilder: ((c, i) => const SizedBox(width: 33)),
                itemCount: categories.length),
          ),
          const TitleSection(name: 'Popular games'),
          PopularSection(),
          const TitleSection(name: 'Newest games'),
          NewestSection(),
        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  final String name;

  const TitleSection({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
