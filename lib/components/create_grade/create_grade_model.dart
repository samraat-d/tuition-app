import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_grade_widget.dart' show CreateGradeWidget;
import 'package:flutter/material.dart';

class CreateGradeModel extends FlutterFlowModel<CreateGradeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  GradeRecord? newlabel;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();
  }
}
