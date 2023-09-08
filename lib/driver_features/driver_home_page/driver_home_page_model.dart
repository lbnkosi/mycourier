import '/auth/firebase_auth/auth_util.dart';
import '/components/bottom_nav_widget.dart';
import '/components/driver_quick_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DriverHomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DriverQuickView component.
  late DriverQuickViewModel driverQuickViewModel;
  // Model for BottomNav component.
  late BottomNavModel bottomNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    driverQuickViewModel = createModel(context, () => DriverQuickViewModel());
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    driverQuickViewModel.dispose();
    bottomNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
