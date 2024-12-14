import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Stack(
        children: [
          TextField(
            cursorColor: const Color(0xFF5F67EA),
            decoration: InputDecoration(
              fillColor: const Color(0xFFF6F8FF),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none
                )
              ),
              prefixIcon: const Icon(
                Icons.search_outlined,
                size: 30,
              ),
              hintText: 'Chercher un jeu',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey.withOpacity(0.7)
              )
            ),
          ),
          Positioned(
            right: 12,
            bottom: 10,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF5F67EA),
              ),
              child: const Icon(
                Icons.mic_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}

