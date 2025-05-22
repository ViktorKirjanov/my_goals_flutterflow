import '/components/common/bottom_bar_heading_component/bottom_bar_heading_component_widget.dart';
import '/components/common/bottom_bar_top_indicator_component/bottom_bar_top_indicator_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_goal_component_widget.dart' show CreateGoalComponentWidget;
import 'package:flutter/material.dart';

class CreateGoalComponentModel
    extends FlutterFlowModel<CreateGoalComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for BottomBarTopIndicatorComponent component.
  late BottomBarTopIndicatorComponentModel bottomBarTopIndicatorComponentModel;
  // Model for BottomBarHeadingComponent component.
  late BottomBarHeadingComponentModel bottomBarHeadingComponentModel;
  // State field(s) for TitleTextField widget.
  FocusNode? titleTextFieldFocusNode;
  TextEditingController? titleTextFieldTextController;
  String? Function(BuildContext, String?)?
      titleTextFieldTextControllerValidator;
  String? _titleTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DescriptionTextField widget.
  FocusNode? descriptionTextFieldFocusNode;
  TextEditingController? descriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionTextFieldTextControllerValidator;
  // State field(s) for StatusDropDown widget.
  String? statusDropDownValue;
  FormFieldController<String>? statusDropDownValueController;

  @override
  void initState(BuildContext context) {
    bottomBarTopIndicatorComponentModel =
        createModel(context, () => BottomBarTopIndicatorComponentModel());
    bottomBarHeadingComponentModel =
        createModel(context, () => BottomBarHeadingComponentModel());
    titleTextFieldTextControllerValidator =
        _titleTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    bottomBarTopIndicatorComponentModel.dispose();
    bottomBarHeadingComponentModel.dispose();
    titleTextFieldFocusNode?.dispose();
    titleTextFieldTextController?.dispose();

    descriptionTextFieldFocusNode?.dispose();
    descriptionTextFieldTextController?.dispose();
  }
}
