import '/backend/backend.dart';
import '/components/dropdown01_options/dropdown01_options_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'map_model.dart';
export 'map_model.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late MapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0x8DF3C762),
      body: StreamBuilder<List<MapRecord>>(
        stream: queryMapRecord(),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<MapRecord> googleMapMapRecordList = snapshot.data!;
          return FlutterFlowGoogleMap(
            controller: _model.googleMapsController,
            onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
            initialLocation: _model.googleMapsCenter ??=
                LatLng(5.982879420377609, 116.57142824378639),
            markers: googleMapMapRecordList
                .map(
                  (googleMapMapRecord) => FlutterFlowMarker(
                    googleMapMapRecord.reference.path,
                    googleMapMapRecord.location!,
                    () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: Container(
                              height: 200.0,
                              child: Dropdown01OptionsWidget(
                                mapz: googleMapMapRecord.reference,
                              ),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    },
                  ),
                )
                .toList(),
            markerColor: GoogleMarkerColor.yellow,
            mapType: MapType.normal,
            style: GoogleMapStyle.silver,
            initialZoom: 16.0,
            allowInteraction: true,
            allowZoom: true,
            showZoomControls: true,
            showLocation: true,
            showCompass: false,
            showMapToolbar: false,
            showTraffic: false,
            centerMapOnMarkerTap: true,
          );
        },
      ),
    );
  }
}
