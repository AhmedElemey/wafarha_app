import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ContextX on BuildContext {
  removeAllSnackBars() {
    ScaffoldMessenger.of(this).clearSnackBars();
  }

  showToast(
      {required OverlayStatus status,
      required String message,
      Widget? leading}) {
    ScaffoldMessenger.of(this)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Row(
            children: [
              if (leading != null) ...{
                leading,
                const SizedBox(
                  height: 16,
                ),
              },
              Flexible(child: Text(message)),
            ],
          ),
          backgroundColor: status.color,
        ),
      );
  }

  Future<void> showOverlay({
    required String message,
    required OverlayStatus status,
  }) async {
    final size = MediaQuery.of(this).size;
    OverlayState? overlayState = Overlay.of(this);
    OverlayEntry overlayEntery = OverlayEntry(
      builder: (context) {
        return Positioned(
          right: 16,
          left: 16,
          top: size.height * 0.07,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.w),
            child: Material(
                child: Container(
              constraints:
                  BoxConstraints(maxWidth: 0.95.sw, maxHeight: size.height),
              color: OverlayStatus.values.firstWhere((e) => e == status).color,
              padding: EdgeInsets.all(16.w),
              child: Text(
                message.length > 200
                    ? 'Unable to process your request'
                    : message,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white),
              ),
            )),
          ),
        ).animate(onComplete: (cont) async {
          Future.delayed(const Duration(seconds: 5))
              .whenComplete(() => cont.reverse());
        }).fadeIn(
          duration: 200.ms,
        );
      },
    );
    overlayState.insert(overlayEntery);
    Future.delayed(const Duration(seconds: 6))
        .whenComplete(() => overlayEntery.remove());
  }
}

enum OverlayStatus {
  error(Colors.red),
  alert(Colors.deepOrangeAccent),
  normal(Colors.green);

  const OverlayStatus(this.color);
  final Color color;
}
