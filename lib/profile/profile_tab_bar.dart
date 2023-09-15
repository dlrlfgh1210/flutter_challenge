import 'package:flutter/material.dart';
import 'package:nomad_flutter_challenge/setting/view_models/dark_config_view_model.dart';
import 'package:provider/provider.dart';

class ProfileTabBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).appBarTheme.backgroundColor,
        border: Border.symmetric(
          horizontal: BorderSide(
            color: context.read<DarkConfigViewModel>().isDarked
                ? Colors.grey.shade700
                : Colors.grey.shade200,
            width: 0.5,
          ),
        ),
      ),
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        unselectedLabelColor: Colors.grey.shade400,
        indicatorColor: context.read<DarkConfigViewModel>().isDarked
            ? Colors.white
            : Colors.black,
        labelPadding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        labelColor: context.read<DarkConfigViewModel>().isDarked
            ? Colors.white
            : Colors.black,
        tabs: const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text("Threads"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text("Replies"),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 39;

  @override
  double get minExtent => 39;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
