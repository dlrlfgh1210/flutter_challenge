import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/setting/view_models/dark_config_view_model.dart';

class NavTab extends ConsumerWidget {
  const NavTab({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.onTap,
    required this.selectedIcon,
  });

  final bool isSelected;
  final IconData icon;
  final Function onTap;
  final IconData selectedIcon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(),
        child: Container(
          color: ref.watch(darkConfigProvider).isDarked
              ? Colors.black
              : Colors.white,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: isSelected ? 1 : 0.6,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(
                  isSelected ? selectedIcon : icon,
                  color: ref.watch(darkConfigProvider).isDarked
                      ? Colors.white
                      : Colors.black,
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
