import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageLoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldEmail widget.
  TextEditingController? textFieldEmailController;
  String? Function(BuildContext, String?)? textFieldEmailControllerValidator;
  // State field(s) for TextFieldPassword widget.
  TextEditingController? textFieldPasswordController;
  late bool textFieldPasswordVisibility;
  String? Function(BuildContext, String?)? textFieldPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldPasswordVisibility = false;
  }

  void dispose() {
    textFieldEmailController?.dispose();
    textFieldPasswordController?.dispose();
  }

  /// Additional helper methods are added here.

}
