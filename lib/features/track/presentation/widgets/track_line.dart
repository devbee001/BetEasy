import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrackLine extends ConsumerWidget {
  const TrackLine({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 390,
      height: 180,
      color: Colors.transparent,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/track_line.png',
              scale: 2,
            ),
          ),
          Align(
            alignment: const Alignment(0.84, -0.8),
            child: Image.asset(
              'assets/images/track_pos.png',
              scale: 1.5,
            ),
          ),
          Align(
            alignment: const Alignment(-0.79, 0.79),
            child: Image.asset(
              'assets/images/start_pos.png',
              scale: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
