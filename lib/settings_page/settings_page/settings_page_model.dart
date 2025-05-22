import '/flutter_flow/flutter_flow_util.dart';
import '/settings_page/components/settings_menu_item/settings_menu_item_widget.dart';
import 'settings_page_widget.dart' show SettingsPageWidget;
import 'package:flutter/material.dart';

class SettingsPageModel extends FlutterFlowModel<SettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SettingsMenuItem component.
  late SettingsMenuItemModel settingsMenuItemModel1;
  // Model for SettingsMenuItem component.
  late SettingsMenuItemModel settingsMenuItemModel2;
  // Model for SettingsMenuItem component.
  late SettingsMenuItemModel settingsMenuItemModel3;
  // Model for SettingsMenuItem component.
  late SettingsMenuItemModel settingsMenuItemModel4;

  @override
  void initState(BuildContext context) {
    settingsMenuItemModel1 =
        createModel(context, () => SettingsMenuItemModel());
    settingsMenuItemModel2 =
        createModel(context, () => SettingsMenuItemModel());
    settingsMenuItemModel3 =
        createModel(context, () => SettingsMenuItemModel());
    settingsMenuItemModel4 =
        createModel(context, () => SettingsMenuItemModel());
  }

  @override
  void dispose() {
    settingsMenuItemModel1.dispose();
    settingsMenuItemModel2.dispose();
    settingsMenuItemModel3.dispose();
    settingsMenuItemModel4.dispose();
  }
}
