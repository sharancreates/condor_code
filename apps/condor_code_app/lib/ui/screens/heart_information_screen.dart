import 'package:condor_code/ui/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_kit/ui_kit.dart';

class HeartInformationScreen extends StatelessWidget {
  const HeartInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: context.colors.scaffoldBackground,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Lottie.asset('packages/ui_kit/assets/animations/sad_smile.json'),
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Text(l10n.heartInfoNoHearts, style: AppTextStyles.h2),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: ElevatedButton(
                onPressed: () {
                  context.pop();
                },
                style: AppButtonStyles.mainButtonStyle(context),
                child: Text(l10n.testMoveOn, style: AppTextStyles.button),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
