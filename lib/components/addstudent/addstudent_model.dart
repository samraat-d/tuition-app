import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'addstudent_widget.dart' show AddstudentWidget;
import 'package:flutter/material.dart';

class AddstudentModel extends FlutterFlowModel<AddstudentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for fullname widget.
  FocusNode? fullnameFocusNode;
  TextEditingController? fullnameTextController;
  String? Function(BuildContext, String?)? fullnameTextControllerValidator;
  // State field(s) for contact widget.
  FocusNode? contactFocusNode;
  TextEditingController? contactTextController;
  String? Function(BuildContext, String?)? contactTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  StudentsRecord? newlabel;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullnameFocusNode?.dispose();
    fullnameTextController?.dispose();

    contactFocusNode?.dispose();
    contactTextController?.dispose();
  }
}
