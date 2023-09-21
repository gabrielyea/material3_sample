import 'package:flutter/material.dart';
import 'package:material_3_demo/component_screen.dart';
import 'package:material_3_demo/styles/agtonomy_icons.dart';

class DashboardNavigationRail extends StatefulWidget {
  const DashboardNavigationRail({super.key});

  @override
  State<DashboardNavigationRail> createState() => _DashboardNavigationRailState();
}

class _DashboardNavigationRailState extends State<DashboardNavigationRail> {
  int? selectedIndex;
  bool isSettings = false;

  @override
  Widget build(BuildContext context) {
    return const ComponentDecoration(
        label: "Dashboard Navigation Rail",
        child: IntrinsicWidth(
            child: SizedBox(
          height: 500,
          child: DashboardRail(),
        )));
  }
}

final allViews = [
  Views(label: "Dashboard", icon: AgtonomyIcons.dashboard),
  Views(label: "Service", icon: AgtonomyIcons.service),
  Views(label: "Autonomy", icon: AgtonomyIcons.routeOutlined),
  Views(label: "Remote", icon: AgtonomyIcons.gamepadConnection),
];

class Views {
  final String label;
  final IconData icon;

  Views({
    required this.label,
    required this.icon,
  });
}

class DashboardRail extends StatefulWidget {
  const DashboardRail({super.key});

  @override
  State<DashboardRail> createState() => _DashboardRailState();
}

class _DashboardRailState extends State<DashboardRail> {
  int? selectedIndex;
  bool isSettings = false;
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      elevation: 4,
      trailing: Expanded(
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            // custom settings button. this is not a part of the navigation rail widget behaviour and is a custom implementation
            // to have the settings button at the bottom of the navigation rail
            InkWell(
              overlayColor: MaterialStateColor.resolveWith(
                (_) => Colors.transparent.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(40),
              onTap: () {
                setState(() {
                  selectedIndex = null;
                  isSettings = true;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.tune,
                      color: isSettings ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onSurface,
                      size: 56,
                    ),
                    const Text(
                      'Settings',
                      style: TextStyle(
                        // color: isSettings ? AgtonomyColors.blue2 : AgtonomyColors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      labelType: NavigationRailLabelType.all,
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) async {
        setState(() {
          selectedIndex = index;
          isSettings = false;
        });
      },
      destinations: _buildDestinations(context),
    );
  }

  List<NavigationRailDestination> _buildDestinations(
    BuildContext context,
  ) {
    final navigationViews = allViews;
    final navigationDestinations = navigationViews.map((view) {
      return NavigationRailDestination(
        label: Text(view.label),
        icon: Icon(view.icon),
      );
    });
    return navigationDestinations.toList();
  }
}
