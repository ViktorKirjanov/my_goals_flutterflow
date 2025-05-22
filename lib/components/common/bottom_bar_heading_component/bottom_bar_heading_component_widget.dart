import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottom_bar_heading_component_model.dart';
export 'bottom_bar_heading_component_model.dart';

class BottomBarHeadingComponentWidget extends StatefulWidget {
  const BottomBarHeadingComponentWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<BottomBarHeadingComponentWidget> createState() =>
      _BottomBarHeadingComponentWidgetState();
}

class _BottomBarHeadingComponentWidgetState
    extends State<BottomBarHeadingComponentWidget> {
  late BottomBarHeadingComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomBarHeadingComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title!,
      style: FlutterFlowTheme.of(context).headlineSmall.override(
            font: GoogleFonts.interTight(
              fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
            ),
            letterSpacing: 0.0,
            fontWeight: FlutterFlowTheme.of(context).headlineSmall.fontWeight,
            fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
          ),
    );
  }
}
