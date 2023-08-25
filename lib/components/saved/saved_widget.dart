import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'saved_model.dart';
export 'saved_model.dart';

class SavedWidget extends StatefulWidget {
  const SavedWidget({
    Key? key,
    required this.saved,
  }) : super(key: key);

  final String? saved;

  @override
  _SavedWidgetState createState() => _SavedWidgetState();
}

class _SavedWidgetState extends State<SavedWidget> {
  late SavedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SavedModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: 'Saved!',
      options: FFButtonOptions(
        width: 230.0,
        height: 44.0,
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 1.0),
        color: Colors.white,
        textStyle: GoogleFonts.getFont(
          'Roboto',
          color: Colors.black,
          fontSize: 17.0,
        ),
        elevation: 4.0,
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 0.0,
        ),
      ),
    );
  }
}
