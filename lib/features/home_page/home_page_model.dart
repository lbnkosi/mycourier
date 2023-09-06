import '/components/bottom_nav_widget.dart';
import '/components/quick_view_recent_shipment_widget.dart';
import '/components/quick_view_shipment_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for QuickViewShipment component.
  late QuickViewShipmentModel quickViewShipmentModel;
  // Model for QuickViewRecentShipment component.
  late QuickViewRecentShipmentModel quickViewRecentShipmentModel;
  // Model for BottomNav component.
  late BottomNavModel bottomNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    quickViewShipmentModel =
        createModel(context, () => QuickViewShipmentModel());
    quickViewRecentShipmentModel =
        createModel(context, () => QuickViewRecentShipmentModel());
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    quickViewShipmentModel.dispose();
    quickViewRecentShipmentModel.dispose();
    bottomNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
