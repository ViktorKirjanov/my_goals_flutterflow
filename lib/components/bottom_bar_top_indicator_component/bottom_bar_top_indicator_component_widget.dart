import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bottom_bar_top_indicator_component_model.dart';
export 'bottom_bar_top_indicator_component_model.dart';

class BottomBarTopIndicatorComponentWidget extends StatefulWidget {
  const BottomBarTopIndicatorComponentWidget({super.key});

  @override
  State<BottomBarTopIndicatorComponentWidget> createState() =>
      _BottomBarTopIndicatorComponentWidgetState();
}

class _BottomBarTopIndicatorComponentWidgetState
    extends State<BottomBarTopIndicatorComponentWidget> {
  late BottomBarTopIndicatorComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomBarTopIndicatorComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50.0,
          height: 4.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryText,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ],
    );
  }
}
