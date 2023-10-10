import 'package:flutter/material.dart';
import 'package:material_3_demo/component_screen.dart';

class AgtonomyLists extends StatelessWidget {
  const AgtonomyLists({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(label: 'Ag Lists', children: [
      AgtonomyExpansionPanel(),
      SizedBox(height: 16),
      AgtonomyExpandedTile(),
    ]);
  }
}

class AgtonomyExpansionPanel extends StatefulWidget {
  const AgtonomyExpansionPanel({super.key});

  @override
  State<AgtonomyExpansionPanel> createState() => _AgtonomyExpansionPanelState();
}

class _AgtonomyExpansionPanelState extends State<AgtonomyExpansionPanel> {
  Map<int, bool> _expansionPanelState = {
    0: false,
    1: false,
    2: false,
    3: false,
    4: false,
  };
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 32),
          title: Text('Expansion Panel List'),
          subtitle: Text('A list of expandable panels that can have nested lists'),
        ),
        SizedBox(
          width: 500,
          child: ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _expansionPanelState[index] = !_expansionPanelState[index]!;
              });
            },
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Expansion Panel 1'),
                  );
                },
                body: ListTile(
                  title: Text('Expansion Panel 1 Body'),
                ),
                isExpanded: _expansionPanelState[0]!,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Expansion Panel 2'),
                  );
                },
                body: ListTile(
                  title: Text(
                    'Expansion Panel 2 small body title',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                isExpanded: _expansionPanelState[1]!,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Expansion Panel 3'),
                  );
                },
                body: ListTile(
                  title: Text('Expansion Panel 3 Body'),
                  leading: Icon(Icons.ac_unit),
                ),
                isExpanded: _expansionPanelState[2]!,
              ),
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Expansion Panel With list view'),
                    leading: Icon(Icons.account_balance),
                  );
                },
                body: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Text('item 1'),
                      leading: Icon(Icons.ac_unit),
                      subtitle: Text('subtitle'),
                    ),
                    ListTile(
                      title: Text('item 2'),
                      leading: Icon(Icons.account_balance),
                      isThreeLine: true,
                      subtitle: Text("subtitle"),
                    ),
                    ListTile(
                      title: Text('item 3'),
                      leading: Icon(Icons.account_balance_wallet),
                    ),
                    ListTile(
                      title: Text('item 4'),
                      trailing: Icon(Icons.account_balance_wallet),
                    ),
                  ],
                ),
                isExpanded: _expansionPanelState[3]!,
              ),
              ExpansionPanel(
                isExpanded: _expansionPanelState[4]!,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Expansion Panel with list view separated'),
                    leading: Icon(Icons.account_balance),
                  );
                },
                body: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('item $index'),
                      leading: Icon(Icons.ac_unit),
                      subtitle: Text('subtitle'),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: 10,
                  shrinkWrap: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AgtonomyExpandedTile extends StatelessWidget {
  const AgtonomyExpandedTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          ListTile(
            title: Text('List View with Expansion Tile'),
            subtitle: Text('A drop down list'),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              ExpansionTile(
                backgroundColor: Theme.of(context).colorScheme.surface,
                collapsedBackgroundColor: Theme.of(context).colorScheme.surface,
                title: Text('Expansion Tile 1'),
                children: [
                  ListTile(title: Text('List Tile 1 ')),
                  ListTile(title: Text('List Tile 2')),
                  ListTile(title: Text('List Tile 3')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
