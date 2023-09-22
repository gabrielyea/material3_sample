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
    return ComponentDecoration(
        label: "Dashboard buttons",
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DashboardButtonsColumn(),
              ],
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
        child: Column(children: [
          FilledButton(
            style: WhiteDbButton(
              context,
            ),
            onPressed: () {},
            child: Text("Dashboard select"),
          ),
          const SizedBox(height: 10),
          FilledButton(
            style: GreenDbButton(
              context,
            ),
            onPressed: () {},
            child: Text("Dashboard continue"),
          ),
          const SizedBox(height: 10),
          FilledButton(
            style: CancelDbButton(
              context,
            ),
            onPressed: () {},
            child: Text("Dashboard cancel"),
          ),
        ]),
      ),
    );
  }
}

class DashboardButtonBase extends ButtonStyle {
  final BuildContext context;
  final EdgeInsets pad;

  DashboardButtonBase(this.context, {this.pad = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0)});

  @override
  MaterialStateProperty<Color?>? get backgroundColor => MaterialStateProperty.resolveWith<Color?>(
        (states) {
          final theme = Theme.of(context);
          final colorScheme = theme.colorScheme;
          return theme.brightness == Brightness.light ? colorScheme.surface : colorScheme.surface;
        },
      );

  @override
  MaterialStateProperty<Color?>? get foregroundColor => MaterialStateProperty.resolveWith<Color?>(
        (states) {
          final theme = Theme.of(context);
          final colorScheme = theme.colorScheme;
          return theme.brightness == Brightness.light ? colorScheme.onSurface : colorScheme.onSurface;
        },
      );

  @override
  MaterialStateProperty<EdgeInsetsGeometry?>? get padding => MaterialStateProperty.all(pad);

  @override
  MaterialStateProperty<OutlinedBorder?>? get shape => MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      );

  @override
  MaterialStateProperty<Size> get fixedSize => MaterialStateProperty.all(Size(300, 80));
}
class WhiteDbButton extends DashboardButtonBase {
  WhiteDbButton(super.context);

  @override
  MaterialStateProperty<Color?>? get backgroundColor => MaterialStateProperty.resolveWith<Color?>(
        (states) {
          final theme = Theme.of(context);
          final colorScheme = theme.colorScheme;
          return theme.brightness == Brightness.light ? colorScheme.onBackground : colorScheme.background;
        },
      );

  @override
  MaterialStateProperty<Color?>? get foregroundColor => MaterialStateProperty.resolveWith<Color?>(
        (states) {
          final theme = Theme.of(context);
          final colorScheme = theme.colorScheme;
          return theme.brightness == Brightness.light ? colorScheme.surface : colorScheme.surface;
        },
      );
}
class GreenDbButton extends DashboardButtonBase {
  GreenDbButton(super.context);

  @override
  MaterialStateProperty<Color?>? get backgroundColor => MaterialStateProperty.resolveWith<Color?>(
        (states) {
          final theme = Theme.of(context);
          final colorScheme = theme.colorScheme;
          return theme.brightness == Brightness.light ? colorScheme.secondary : colorScheme.onSecondary;
        },
      );

  @override
  MaterialStateProperty<Color?>? get foregroundColor => MaterialStateProperty.resolveWith<Color?>(
        (states) {
          final theme = Theme.of(context);
          final colorScheme = theme.colorScheme;
          return theme.brightness == Brightness.light ? colorScheme.onSecondary : colorScheme.secondary;
        },
      );
}
class CancelDbButton extends DashboardButtonBase {
  CancelDbButton(super.context);

  @override
  MaterialStateProperty<Color?>? get backgroundColor => MaterialStateProperty.resolveWith<Color?>(
        (states) {
          final theme = Theme.of(context);
          final colorScheme = theme.colorScheme;
          return theme.brightness == Brightness.light ? colorScheme.error : colorScheme.onError;
        },
      );

  @override
  MaterialStateProperty<Color?>? get foregroundColor => MaterialStateProperty.resolveWith<Color?>(
        (states) {
          final theme = Theme.of(context);
          final colorScheme = theme.colorScheme;
          return theme.brightness == Brightness.light ? colorScheme.onError : colorScheme.error;
        },
      );
}
