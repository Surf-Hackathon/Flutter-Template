import 'package:flutter/material.dart';

extension SnackBarMessenger on BuildContext {
  void showInfoSnackBar(String text) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          text,
        ),
      ),
    );
  }

  void showErrorSnackBar(String text) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(
              Icons.warning,
              color: Colors.red,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
            ),
          ],
        ),
      ),
    );
  }
}
