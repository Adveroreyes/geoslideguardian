import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RealTimeRecord extends FirestoreRecord {
  RealTimeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "RealTime" field.
  String? _realTime;
  String get realTime => _realTime ?? '';
  bool hasRealTime() => _realTime != null;

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _realTime = snapshotData['RealTime'] as String?;
    _id = snapshotData['Id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RealTime');

  static Stream<RealTimeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RealTimeRecord.fromSnapshot(s));

  static Future<RealTimeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RealTimeRecord.fromSnapshot(s));

  static RealTimeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RealTimeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RealTimeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RealTimeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RealTimeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RealTimeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRealTimeRecordData({
  String? realTime,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'RealTime': realTime,
      'Id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class RealTimeRecordDocumentEquality implements Equality<RealTimeRecord> {
  const RealTimeRecordDocumentEquality();

  @override
  bool equals(RealTimeRecord? e1, RealTimeRecord? e2) {
    return e1?.realTime == e2?.realTime && e1?.id == e2?.id;
  }

  @override
  int hash(RealTimeRecord? e) =>
      const ListEquality().hash([e?.realTime, e?.id]);

  @override
  bool isValidKey(Object? o) => o is RealTimeRecord;
}
