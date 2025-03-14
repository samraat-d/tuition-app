import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_school_widget.dart' show CreateSchoolWidget;
import 'package:flutter/material.dart';

class CreateSchoolModel extends FlutterFlowModel<CreateSchoolWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SchoolRecord? newlabel;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();
  }
}
