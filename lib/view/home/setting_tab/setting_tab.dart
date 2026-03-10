import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylish_ecommerce/providers/theme_provider.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Theme'),
                Switch(
                  value: context.watch<ThemeProvider>().isDark,
                  onChanged: (value) async {
                    context.read<ThemeProvider>().toggleTheme();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
