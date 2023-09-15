import 'package:flutter/material.dart';
import 'package:nomad_flutter_challenge/setting/models/dark_config_model.dart';
import 'package:nomad_flutter_challenge/setting/repos/dark_config_repo.dart';

class DarkConfigViewModel extends ChangeNotifier {
  final DarkConfigRepository _darkConfigRepository;

  late final DarkConfigModel _darkConfigModel = DarkConfigModel(
    isDarked: _darkConfigRepository.isDarked(),
  );

  DarkConfigViewModel(this._darkConfigRepository);

  bool get isDarked => _darkConfigModel.isDarked;

  void setDarked(bool value) {
    _darkConfigRepository.setDarked(value);
    _darkConfigModel.isDarked = value;
    notifyListeners();
  }
}
