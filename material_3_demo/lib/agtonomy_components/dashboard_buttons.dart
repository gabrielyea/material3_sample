import 'package:flutter/material.dart';
import 'package:material_3_demo/component_screen.dart';

class DashboardButtons extends StatefulWidget {
  const DashboardButtons({super.key});

  @override
  State<DashboardButtons> createState() => _DashboardButtonsState();
}

class _DashboardButtonsState extends State<DashboardButtons> {
  @override
  Widget build(BuildContext context) {
    return const ComponentDecoration(
        label: "Dashboard buttons",
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [],
            )));
  }
}

class DashboardButtonsColumn extends StatelessWidget {
  const DashboardButtonsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: IntrinsicWidth(
          child: Column(children: []),
        ));
  }
}

class MyButtonStyle extends ButtonStyle {
  MyButtonStyle(BuildContext context)
      : super(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (states) {
              final theme = Theme.of(context);
              final colorScheme = theme.colorScheme;
              return theme.brightness == Brightness.light
                  ? colorScheme.onSurface
                  : colorScheme.surface;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (states) {
              final theme = Theme.of(context);
              final colorScheme = theme.colorScheme;
              return theme.brightness == Brightness.light
                  ? colorScheme.onPrimary
                  : colorScheme.onSecondary;
            },
          ),
        );
}
