import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vbt_case/presentation/game/view_model/drop_down_provider/drop_down_provider.dart';

void main() {
  late DropDownProvider dropDownProvider;

  setUp(() {
    dropDownProvider = DropDownProvider();
  });
  test('change status of icon', () {
    dropDownProvider.changeCurrentIcon(Icons.abc);
    final currentIcon = dropDownProvider.iconValue;

    expect(currentIcon, Icons.abc);
  });
}
