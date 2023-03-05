import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class PermissionDeniedAlert extends StatelessWidget {
  const PermissionDeniedAlert({
    required this.openSettings,
    Key? key,
  }) : super(key: key);

  final void Function() openSettings;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text(
        'Доступ к камере ограничен, хотите разрешить доступ?',
        textAlign: TextAlign.center,
      ),
      actions: [
        Column(
          children: [
            ElevatedButton(
              onPressed: openSettings,
              child: const Center(
                child: Text(
                  'ДА',
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: context.popRoute,
              child: const Center(
                child: Text(
                  'НЕТ, ВВЕСТИ ВРУЧНУЮ',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
