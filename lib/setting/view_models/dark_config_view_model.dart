import 'package:nomad_flutter_challenge/setting/models/dark_config_model.dart';
import 'package:nomad_flutter_challenge/setting/repos/dark_config_repo.dart';
import 'package:riverpod/riverpod.dart';

class DarkConfigViewModel extends Notifier<DarkConfigModel> {
  final DarkConfigRepository _darkConfigRepository;

  DarkConfigViewModel(this._darkConfigRepository);

  void setDarked(bool value) {
    _darkConfigRepository.setDarked(value);
    state = DarkConfigModel(
      isDarked: value,
    );
  }

  @override
  DarkConfigModel build() {
    return DarkConfigModel(
      isDarked: _darkConfigRepository.isDarked(),
    );
  }
}

final darkConfigProvider =
    NotifierProvider<DarkConfigViewModel, DarkConfigModel>(
  () => throw UnimplementedError(),
);
