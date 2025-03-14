import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'student_profile_widget.dart' show StudentProfileWidget;
import 'package:flutter/material.dart';

class StudentProfileModel extends FlutterFlowModel<StudentProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for fees widget.
  FocusNode? feesFocusNode;
  TextEditingController? feesTextController;
  String? Function(BuildContext, String?)? feesTextControllerValidator;
  // State field(s) for hours widget.
  FocusNode? hoursFocusNode;
  TextEditingController? hoursTextController;
  String? Function(BuildContext, String?)? hoursTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    feesFocusNode?.dispose();
    feesTextController?.dispose();

    hoursFocusNode?.dispose();
    hoursTextController?.dispose();
  }
}
