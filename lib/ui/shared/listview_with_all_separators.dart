import 'package:flutter/material.dart';

/// Class used to add separator at the start and at the end of the list, as well as in between items.
class ListViewWithAllSeparators<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item, int index) itemBuilder;
  final Axis scrollDirection;
  final IndexedWidgetBuilder separatorBuilder;
  final double? cacheExtent;
  final bool shrinkWrap;
  final bool hasTopSpace;
  final ScrollPhysics? physics;

  const ListViewWithAllSeparators({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.scrollDirection = Axis.vertical,
    required this.separatorBuilder,
    this.cacheExtent,
    this.shrinkWrap = false,
    this.hasTopSpace = true,
    this.physics = const BouncingScrollPhysics(),
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: physics,
      cacheExtent: cacheExtent,
      scrollDirection: scrollDirection,
      itemCount: items.length + 2,
      separatorBuilder: (context, index) {
        if (index == 0 && !hasTopSpace) {
          return const SizedBox.shrink(); // zero height: not visible
        }
        return separatorBuilder(context, index);
      },
      shrinkWrap: shrinkWrap,
      itemBuilder: (context, index) {
        if (index == 0 || index == items.length + 1) {
          return const SizedBox.shrink(); // zero height: not visible
        }
        return itemBuilder(context, items[index - 1], index - 1);
      },
    );
  }
}
