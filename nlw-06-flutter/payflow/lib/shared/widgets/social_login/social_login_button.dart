import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
    // InkWell é um widget que responde a toques, exibindo um efeito visual de "tinta"
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.shape,
          borderRadius: BorderRadius.circular(5),
          border: Border.fromBorderSide(BorderSide(color: AppColors.stroke)),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.google),
                  SizedBox(width: 16),
                  // ignore: sized_box_for_whitespace
                  Container(height: 56, width: 1, color: AppColors.stroke),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Entrar com Google", style: AppTextStyles.buttonGrey),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
