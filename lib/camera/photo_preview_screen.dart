import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gallery_saver/gallery_saver.dart';

class PhotoPreviewScreen extends StatefulWidget {
  final String imagePath;
  final bool isPicked;
  const PhotoPreviewScreen({
    super.key,
    required this.imagePath,
    required this.isPicked,
  });

  @override
  State<PhotoPreviewScreen> createState() => _PhotoPreviewScreenState();
}

class _PhotoPreviewScreenState extends State<PhotoPreviewScreen> {
  bool _savedPhoto = false;

  Future<void> _saveToGallery() async {
    if (_savedPhoto) return;

    await GallerySaver.saveImage(
      widget.imagePath,
    );

    _savedPhoto = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview'),
        actions: [
          if (!widget.isPicked)
            TextButton(
              onPressed: () {},
              child: const Text(
                "확인",
              ),
            ),
          IconButton(
            onPressed: _saveToGallery,
            icon: FaIcon(
              _savedPhoto ? FontAwesomeIcons.check : FontAwesomeIcons.download,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Image.file(
            File(widget.imagePath),
          ),
        ),
      ),
    );
  }
}
