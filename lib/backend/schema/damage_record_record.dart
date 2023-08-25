import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DamageRecordRecord extends FirestoreRecord {
  DamageRecordRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "DamageRecord" field.
  String? _damageRecord;
  String get damageRecord => _damageRecord ?? '';
  bool hasDamageRecord() => _damageRecord != null;

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _damageRecord = snapshotData['DamageRecord'] as String?;
    _id = snapshotData['Id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DamageRecord');

  static Stream<DamageRecordRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DamageRecordRecord.fromSnapshot(s));

  static Future<DamageRecordRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DamageRecordRecord.fromSnapshot(s));

  static DamageRecordRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DamageRecordRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DamageRecordRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DamageRecordRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DamageRecordRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DamageRecordRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDamageRecordRecordData({
  String? damageRecord,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'DamageRecord': damageRecord,
      'Id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class DamageRecordRecordDocumentEquality
    implements Equality<DamageRecordRecord> {
  const DamageRecordRecordDocumentEquality();

  @override
  bool equals(DamageRecordRecord? e1, DamageRecordRecord? e2) {
    return e1?.damageRecord == e2?.damageRecord && e1?.id == e2?.id;
  }

  @override
  int hash(DamageRecordRecord? e) =>
      const ListEquality().hash([e?.damageRecord, e?.id]);

  @override
  bool isValidKey(Object? o) => o is DamageRecordRecord;
}
