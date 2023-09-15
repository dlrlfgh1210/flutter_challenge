import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomad_flutter_challenge/search/search_container.dart';
import 'package:nomad_flutter_challenge/setting/view_models/dark_config_view_model.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  void _onSearchChanged(String value) {}

  void _onSearchSubmitted(String value) {}

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Search",
          style: TextStyle(
            color: context.read<DarkConfigViewModel>().isDarked
                ? Colors.white
                : Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              CupertinoSearchTextField(
                controller: _textEditingController,
                onChanged: _onSearchChanged,
                onSubmitted: _onSearchSubmitted,
              ),
              const SizedBox(
                height: 20,
              ),
              const SearchContainer(
                myImage: NetworkImage(
                  "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg",
                ),
                nickName: "rjmithun",
                subName: "Mithun",
                followers: "26.6K follwers",
              ),
              const SearchContainer(
                myImage: NetworkImage(
                  "https://cdn.mhnse.com/news/photo/202304/176813_175528_956.jpg",
                ),
                nickName: "vicenews",
                subName: "VICE News",
                followers: "301K follwers",
              ),
              const SearchContainer(
                myImage: NetworkImage(
                  "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg",
                ),
                nickName: "trevornoah",
                subName: "Trevor Noah",
                followers: "789K follwers",
              ),
              const SearchContainer(
                myImage: NetworkImage(
                  "https://file.mk.co.kr/meet/neds/2023/08/image_readtop_2023_619590_16919900415585291.jpg",
                ),
                nickName: "condenast",
                subName: "Conde Nast",
                followers: "130K follwers",
              ),
              const SearchContainer(
                myImage: NetworkImage(
                  "https://www.sisajournal.com/news/photo/202306/265204_181493_2229.jpg",
                ),
                nickName: "chef_pillai",
                subName: "Suresh Pillai",
                followers: "69.2K follwers",
              ),
              const SearchContainer(
                myImage: NetworkImage(
                  "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg",
                ),
                nickName: "malala",
                subName: "Malala Yousafzai",
                followers: "237K follwers",
              ),
              const SearchContainer(
                myImage: NetworkImage(
                  "https://newsimg.sedaily.com/2023/04/10/29O8ZA6BWK_1.jpg",
                ),
                nickName: "sebin_cyriac",
                subName: "Fishing_freaks",
                followers: "53.2K follwers",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
