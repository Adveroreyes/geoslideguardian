import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MapRecord extends FirestoreRecord {
  MapRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "Location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "Locationz" field.
  String? _locationz;
  String get locationz => _locationz ?? '';
  bool hasLocationz() => _locationz != null;

  // "Measured" field.
  DateTime? _measured;
  DateTime? get measured => _measured;
  bool hasMeasured() => _measured != null;

  // "Crackmeter" field.
  String? _crackmeter;
  String get crackmeter => _crackmeter ?? '';
  bool hasCrackmeter() => _crackmeter != null;

  // "CurrCrack" field.
  String? _currCrack;
  String get currCrack => _currCrack ?? '';
  bool hasCurrCrack() => _currCrack != null;

  void _initializeFields() {
    _id = snapshotData['Id'] as String?;
    _location = snapshotData['Location'] as LatLng?;
    _locationz = snapshotData['Locationz'] as String?;
    _measured = snapshotData['Measured'] as DateTime?;
    _crackmeter = snapshotData['Crackmeter'] as String?;
    _currCrack = snapshotData['CurrCrack'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('map');

  static Stream<MapRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MapRecord.fromSnapshot(s));

  static Future<MapRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MapRecord.fromSnapshot(s));

  static MapRecord fromSnapshot(DocumentSnapshot snapshot) => MapRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MapRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MapRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MapRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MapRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMapRecordData({
  String? id,
  LatLng? location,
  String? locationz,
  DateTime? measured,
  String? crackmeter,
  String? currCrack,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id': id,
      'Location': location,
      'Locationz': locationz,
      'Measured': measured,
      'Crackmeter': crackmeter,
      'CurrCrack': currCrack,
    }.withoutNulls,
  );

  return firestoreData;
}

class MapRecordDocumentEquality implements Equality<MapRecord> {
  const MapRecordDocumentEquality();

  @override
  bool equals(MapRecord? e1, MapRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.location == e2?.location &&
        e1?.locationz == e2?.locationz &&
        e1?.measured == e2?.measured &&
        e1?.crackmeter == e2?.crackmeter &&
        e1?.currCrack == e2?.currCrack;
  }

  @override
  int hash(MapRecord? e) => const ListEquality().hash([
        e?.id,
        e?.location,
        e?.locationz,
        e?.measured,
        e?.crackmeter,
        e?.currCrack
      ]);

  @override
  bool isValidKey(Object? o) => o is MapRecord;
}
