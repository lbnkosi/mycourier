import '/components/bottom_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HelpPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BottomNav component.
  late BottomNavModel bottomNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    bottomNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
