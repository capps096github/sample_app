import 'package:flutter/cupertino.dart';

import '../../sample_app_exporter.dart';

class SampleAppPlaceholder extends StatelessWidget {
  ///This is a placeholder widget used to render blank sample screens in the app
  const SampleAppPlaceholder({super.key, required this.title});

  /// title text for the screen
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: sampleAppRandomColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Icon(
              CupertinoIcons.circle_grid_hex_fill,
              color: sampleAppWhite,
              size: 80,
            ),
          ),

          const VerticalSpace(of: spacing16),

          // title
          Text(
            title + sampleAppRandomColor.toString(),
            style: const TextStyle(color: sampleAppWhite),
          ),
        ],
      ),
    );
  }
}
