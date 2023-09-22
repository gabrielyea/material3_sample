import 'package:flutter/material.dart';

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

class DynamicDashboardButtonsColumn extends StatelessWidget {
  const DynamicDashboardButtonsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: IntrinsicWidth(
        child: Column(children: [
          FilledButton(
            onPressed: () {},
            child: Text("Dashboard action"),
            style: BlueActionBtn(context),
          ),
          SizedBox(height: 10),
          FilledButton.icon(
            onPressed: null,
            icon: Icon(Icons.warning, color: Colors.amber),
            label: Text("Dashboard warning"),
            style: WarningButton(context),
          ),
          SizedBox(height: 10),
          FilledButton.icon(
            icon: const CircularProgressIndicator(
              color: Colors.white30,
            ),
            onPressed: null,
            label: const Text(""),
            style: WarningButton(context),
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

class BlueActionBtn extends DashboardButtonBase {
  BlueActionBtn(super.context);

  @override
  MaterialStateProperty<Color?>? get backgroundColor => MaterialStateProperty.resolveWith<Color?>(
        (states) {
          final theme = Theme.of(context);
          final colorScheme = theme.colorScheme;
          return theme.brightness == Brightness.light ? colorScheme.primary : colorScheme.onPrimary;
        },
      );

  @override
  MaterialStateProperty<Color?>? get foregroundColor => MaterialStateProperty.resolveWith<Color?>(
        (states) {
          final theme = Theme.of(context);
          final colorScheme = theme.colorScheme;
          return theme.brightness == Brightness.light ? colorScheme.onPrimary : colorScheme.primary;
        },
      );

  @override
  MaterialStateProperty<OutlinedBorder?>? get shape => MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      );
}

class WarningButton extends DashboardButtonBase {
  WarningButton(super.context);

  @override
  MaterialStateProperty<Color?>? get backgroundColor => MaterialStateProperty.resolveWith<Color?>(
        (states) {
          final theme = Theme.of(context);
          final colorScheme = theme.colorScheme;
          return theme.brightness == Brightness.light ? colorScheme.inverseSurface : colorScheme.onInverseSurface;
        },
      );
  @override
  MaterialStateProperty<OutlinedBorder?>? get shape => MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      );

  @override
  MaterialStateProperty<Color?>? get foregroundColor => MaterialStateProperty.resolveWith<Color?>(
        (states) {
          final theme = Theme.of(context);
          final colorScheme = theme.colorScheme;
          return theme.brightness == Brightness.light ? colorScheme.onInverseSurface : colorScheme.inverseSurface;
        },
      );
}
