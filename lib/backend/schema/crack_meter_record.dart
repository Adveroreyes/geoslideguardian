import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CrackMeterRecord extends FirestoreRecord {
  CrackMeterRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CrackMeter" field.
  String? _crackMeter;
  String get crackMeter => _crackMeter ?? '';
  bool hasCrackMeter() => _crackMeter != null;

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _crackMeter = snapshotData['CrackMeter'] as String?;
    _id = snapshotData['Id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CrackMeter');

  static Stream<CrackMeterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CrackMeterRecord.fromSnapshot(s));

  static Future<CrackMeterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CrackMeterRecord.fromSnapshot(s));

  static CrackMeterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CrackMeterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CrackMeterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CrackMeterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CrackMeterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CrackMeterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCrackMeterRecordData({
  String? crackMeter,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CrackMeter': crackMeter,
      'Id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class CrackMeterRecordDocumentEquality implements Equality<CrackMeterRecord> {
  const CrackMeterRecordDocumentEquality();

  @override
  bool equals(CrackMeterRecord? e1, CrackMeterRecord? e2) {
    return e1?.crackMeter == e2?.crackMeter && e1?.id == e2?.id;
  }

  @override
  int hash(CrackMeterRecord? e) =>
      const ListEquality().hash([e?.crackMeter, e?.id]);

  @override
  bool isValidKey(Object? o) => o is CrackMeterRecord;
}
