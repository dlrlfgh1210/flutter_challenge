import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/setting/view_models/dark_config_view_model.dart';

class SearchContainer extends ConsumerStatefulWidget {
  final String nickName, subName, followers;
  final dynamic myImage;
  const SearchContainer({
    super.key,
    required this.nickName,
    required this.subName,
    required this.followers,
    required this.myImage,
  });

  @override
  SearchContainerState createState() => SearchContainerState();
}

class SearchContainerState extends ConsumerState<SearchContainer> {
  bool _isSelected = false;

  void _onTap() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            foregroundImage: widget.myImage,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.nickName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      FaIcon(
                        FontAwesomeIcons.circleCheck,
                        color: Colors.blue.shade300,
                        size: 15,
                      ),
                    ],
                  ),
                  Text(
                    widget.subName,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: _onTap,
                child: Container(
                  width: 80,
                  height: 50,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      color: _isSelected
                          ? Colors.white
                          : ref.watch(darkConfigProvider).isDarked
                              ? Colors.grey
                              : Colors.grey.shade600,
                    ),
                    color: _isSelected
                        ? Colors.grey.shade300
                        : ref.watch(darkConfigProvider).isDarked
                            ? Colors.grey
                            : Colors.white,
                  ),
                  child: Text(
                    _isSelected ? "Unfollow" : "Follow",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _isSelected
                          ? Colors.white
                          : ref.watch(darkConfigProvider).isDarked
                              ? null
                              : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          subtitle: Text(
            widget.followers,
            style: TextStyle(
              color:
                  ref.watch(darkConfigProvider).isDarked ? null : Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          width: 500,
          child: Divider(
            color: ref.watch(darkConfigProvider).isDarked
                ? Colors.grey
                : Colors.black.withOpacity(0.1),
            thickness: 2.0,
          ),
        ),
      ],
    );
  }
}
