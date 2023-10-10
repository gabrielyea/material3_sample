import 'package:flutter/material.dart';
import 'package:material_3_demo/component_screen.dart';

class AgtonomyContainers extends StatelessWidget {
  const AgtonomyContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(label: 'Ag Container', children: [
      AgtonomyCardList(),
    ]);
  }
}

class AgtonomyCardList extends StatelessWidget {
  const AgtonomyCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 374,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Card List'),
            subtitle: Text('A material card containing a list of material tiles'),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("List title", style: Theme.of(context).textTheme.titleMedium)),
          Expanded(
            child: Card(
              color: Theme.of(context).colorScheme.surface,
              surfaceTintColor: Theme.of(context).colorScheme.surface,
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 8),
                    title: Text(
                      "List Tile ${index}",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 48,
                          width: 48,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          width: 48,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.wifi),
                          ),
                        ),
                        PopupMenuButton(
                          surfaceTintColor: Theme.of(context).colorScheme.surface,
                          onSelected: (item) {},
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 0,
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                                Icon(Icons.check),
                                Text(
                                  "Option 1",
                                  style: Theme.of(context).textTheme.labelMedium,
                                ),
                              ]),
                            ),
                            PopupMenuItem(
                                value: 1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.cancel_outlined,
                                      color: Theme.of(context).colorScheme.error,
                                    ),
                                    Text(
                                      "Option 2",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .apply(color: Theme.of(context).colorScheme.error),
                                    ),
                                  ],
                                )),
                          ],
                          icon: Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
