import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';

class GallerySection extends StatelessWidget {
  const GallerySection(this.game, {super.key});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SizedBox(
            width: 250,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: GestureDetector(
                onTap: () async => await showGeneralDialog(
                  context: context,
                  transitionBuilder:
                      (context, animation, secondaryAnimation, child) {
                    final TransformationController viewController =
                        TransformationController();
                    Matrix4 initialValue = Matrix4.identity();
                    return Transform.scale(
                      scale: animation.value,
                      child: Opacity(
                        opacity: animation.value,
                        child: Dialog(
                          insetPadding: const EdgeInsets.all(10),
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: GestureDetector(
                            onVerticalDragEnd: (_) =>
                                Navigator.of(context).pop(),
                            child: InteractiveViewer(
                              maxScale: 2,
                              minScale: 0.3,
                              trackpadScrollCausesScale: true,
                              transformationController: viewController,
                              onInteractionStart: (details) {
                                initialValue = viewController.value;
                              },
                              onInteractionEnd: (details) {
                                viewController.value = initialValue;
                              },
                              // transformationController: _transformationController,
                              child: Image.asset(
                                game.images[index],
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 200),
                  pageBuilder: (context, a, b) {
                    return const SizedBox();
                  },
                  barrierDismissible: true,
                  barrierLabel: '',
                ),
                child: Image.asset(
                  game.images[index],
                  fit: BoxFit.cover,
                ),
              ),
            )),
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemCount: game.images.length,
      ),
    );
  }
}
