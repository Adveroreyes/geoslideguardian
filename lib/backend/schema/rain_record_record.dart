import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RainRecordRecord extends FirestoreRecord {
  RainRecordRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "RainRecord" field.
  String? _rainRecord;
  String get rainRecord => _rainRecord ?? '';
  bool hasRainRecord() => _rainRecord != null;

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _rainRecord = snapshotData['RainRecord'] as String?;
    _id = snapshotData['Id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RainRecord');

  static Stream<RainRecordRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RainRecordRecord.fromSnapshot(s));

  static Future<RainRecordRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RainRecordRecord.fromSnapshot(s));

  static RainRecordRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RainRecordRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RainRecordRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RainRecordRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RainRecordRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RainRecordRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRainRecordRecordData({
  String? rainRecord,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'RainRecord': rainRecord,
      'Id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class RainRecordRecordDocumentEquality implements Equality<RainRecordRecord> {
  const RainRecordRecordDocumentEquality();

  @override
  bool equals(RainRecordRecord? e1, RainRecordRecord? e2) {
    return e1?.rainRecord == e2?.rainRecord && e1?.id == e2?.id;
  }

  @override
  int hash(RainRecordRecord? e) =>
      const ListEquality().hash([e?.rainRecord, e?.id]);

  @override
  bool isValidKey(Object? o) => o is RainRecordRecord;
}
