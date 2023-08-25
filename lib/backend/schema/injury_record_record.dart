import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InjuryRecordRecord extends FirestoreRecord {
  InjuryRecordRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "InjuryRecord" field.
  String? _injuryRecord;
  String get injuryRecord => _injuryRecord ?? '';
  bool hasInjuryRecord() => _injuryRecord != null;

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _injuryRecord = snapshotData['InjuryRecord'] as String?;
    _id = snapshotData['Id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('InjuryRecord');

  static Stream<InjuryRecordRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InjuryRecordRecord.fromSnapshot(s));

  static Future<InjuryRecordRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InjuryRecordRecord.fromSnapshot(s));

  static InjuryRecordRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InjuryRecordRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InjuryRecordRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InjuryRecordRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InjuryRecordRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InjuryRecordRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInjuryRecordRecordData({
  String? injuryRecord,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'InjuryRecord': injuryRecord,
      'Id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class InjuryRecordRecordDocumentEquality
    implements Equality<InjuryRecordRecord> {
  const InjuryRecordRecordDocumentEquality();

  @override
  bool equals(InjuryRecordRecord? e1, InjuryRecordRecord? e2) {
    return e1?.injuryRecord == e2?.injuryRecord && e1?.id == e2?.id;
  }

  @override
  int hash(InjuryRecordRecord? e) =>
      const ListEquality().hash([e?.injuryRecord, e?.id]);

  @override
  bool isValidKey(Object? o) => o is InjuryRecordRecord;
}
