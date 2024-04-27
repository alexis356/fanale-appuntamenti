import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'no_items_model.dart';
export 'no_items_model.dart';

class NoItemsWidget extends StatefulWidget {
  const NoItemsWidget({super.key});

  @override
  State<NoItemsWidget> createState() => _NoItemsWidgetState();
}

class _NoItemsWidgetState extends State<NoItemsWidget> {
  late NoItemsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoItemsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Text(
        'Nessun Appuntamento',
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Roboto',
              fontSize: 24.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
