import '/flutter_flow/flutter_flow_util.dart';
import 'inicio_admin_widget.dart' show InicioAdminWidget;
import 'package:flutter/material.dart';

class InicioAdminModel extends FlutterFlowModel<InicioAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField_titulo widget.
  FocusNode? textFieldTituloFocusNode;
  TextEditingController? textFieldTituloController;
  String? Function(BuildContext, String?)? textFieldTituloControllerValidator;
  String? _textFieldTituloControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField_desbreve widget.
  FocusNode? textFieldDesbreveFocusNode;
  TextEditingController? textFieldDesbreveController;
  String? Function(BuildContext, String?)? textFieldDesbreveControllerValidator;
  String? _textFieldDesbreveControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField_parafo1 widget.
  FocusNode? textFieldParafo1FocusNode;
  TextEditingController? textFieldParafo1Controller;
  String? Function(BuildContext, String?)? textFieldParafo1ControllerValidator;
  // State field(s) for TextField_parafo2 widget.
  FocusNode? textFieldParafo2FocusNode;
  TextEditingController? textFieldParafo2Controller;
  String? Function(BuildContext, String?)? textFieldParafo2ControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField_parafo3 widget.
  FocusNode? textFieldParafo3FocusNode;
  TextEditingController? textFieldParafo3Controller;
  String? Function(BuildContext, String?)? textFieldParafo3ControllerValidator;
  // State field(s) for TextField_parafo4 widget.
  FocusNode? textFieldParafo4FocusNode;
  TextEditingController? textFieldParafo4Controller;
  String? Function(BuildContext, String?)? textFieldParafo4ControllerValidator;
  // State field(s) for TextField_mision widget.
  FocusNode? textFieldMisionFocusNode;
  TextEditingController? textFieldMisionController;
  String? Function(BuildContext, String?)? textFieldMisionControllerValidator;
  // State field(s) for TextField_VISION widget.
  FocusNode? textFieldVISIONFocusNode;
  TextEditingController? textFieldVISIONController;
  String? Function(BuildContext, String?)? textFieldVISIONControllerValidator;
  // State field(s) for TextField_OBJETIVO widget.
  FocusNode? textFieldOBJETIVOFocusNode;
  TextEditingController? textFieldOBJETIVOController;
  String? Function(BuildContext, String?)? textFieldOBJETIVOControllerValidator;
  // State field(s) for TextField_titulo_principal widget.
  FocusNode? textFieldTituloPrincipalFocusNode;
  TextEditingController? textFieldTituloPrincipalController;
  String? Function(BuildContext, String?)?
      textFieldTituloPrincipalControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textFieldTituloControllerValidator = _textFieldTituloControllerValidator;
    textFieldDesbreveControllerValidator =
        _textFieldDesbreveControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldTituloFocusNode?.dispose();
    textFieldTituloController?.dispose();

    textFieldDesbreveFocusNode?.dispose();
    textFieldDesbreveController?.dispose();

    textFieldParafo1FocusNode?.dispose();
    textFieldParafo1Controller?.dispose();

    textFieldParafo2FocusNode?.dispose();
    textFieldParafo2Controller?.dispose();

    textFieldParafo3FocusNode?.dispose();
    textFieldParafo3Controller?.dispose();

    textFieldParafo4FocusNode?.dispose();
    textFieldParafo4Controller?.dispose();

    textFieldMisionFocusNode?.dispose();
    textFieldMisionController?.dispose();

    textFieldVISIONFocusNode?.dispose();
    textFieldVISIONController?.dispose();

    textFieldOBJETIVOFocusNode?.dispose();
    textFieldOBJETIVOController?.dispose();

    textFieldTituloPrincipalFocusNode?.dispose();
    textFieldTituloPrincipalController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
