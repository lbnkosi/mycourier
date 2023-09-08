import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/bottom_nav_widget.dart';
import '/components/custom_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ManageProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomAppBar component.
  late CustomAppBarModel customAppBarModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Surname widget.
  TextEditingController? surnameController;
  String? Function(BuildContext, String?)? surnameControllerValidator;
  // State field(s) for DisplayName widget.
  TextEditingController? displayNameController;
  String? Function(BuildContext, String?)? displayNameControllerValidator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // Model for BottomNav component.
  late BottomNavModel bottomNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customAppBarModel = createModel(context, () => CustomAppBarModel());
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    customAppBarModel.dispose();
    nameController?.dispose();
    surnameController?.dispose();
    displayNameController?.dispose();
    emailController?.dispose();
    phoneController?.dispose();
    bottomNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
