import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/camera/camera_screen.dart';
import 'package:nomad_flutter_challenge/widget/change_color_button.dart';

class WriteBottomSheet extends StatefulWidget {
  const WriteBottomSheet({super.key});

  @override
  State<WriteBottomSheet> createState() => _WriteBottomSheetState();
}

class _WriteBottomSheetState extends State<WriteBottomSheet> {
  final TextEditingController _postController = TextEditingController();
  String _post = "";

  @override
  void initState() {
    super.initState();
    _postController.addListener(() {
      setState(() {
        _post = _postController.text;
      });
    });
  }

  @override
  void dispose() {
    _postController.dispose();
    super.dispose();
  }

  void _onClosePressed() {
    Navigator.of(context).pop();
  }

  void _onSubmitTap() {
    if (_post.isEmpty) {
      return;
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey.shade50,
          leading: TextButton(
            onPressed: _onClosePressed,
            child: const Text(
              "CANCEL",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
          ),
          title: const Text("New thread"),
        ),
        body: Column(
          children: [
            SizedBox(
              width: 500,
              child: Divider(
                color: Colors.black.withOpacity(0.1),
                thickness: 2.0,
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(4),
                  child: CircleAvatar(
                    radius: 25,
                    foregroundImage: NetworkImage(
                        "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 260,
                      height: 60,
                      child: TextField(
                        controller: _postController,
                        expands: true,
                        minLines: null,
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: "Start a thread...",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CameraScreen(),
                          ),
                        );
                      },
                      child: const FaIcon(
                        FontAwesomeIcons.clipboard,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: _onSubmitTap,
              child: ChangeColorButton(
                  disabled: _post.isEmpty, buttonName: "Post", buttonSize: 0.3),
            ),
          ],
        ),
      ),
    );
  }
}
