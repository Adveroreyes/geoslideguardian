import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatepickedRecord extends FirestoreRecord {
  DatepickedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "DateTime" field.
  String? _dateTime;
  String get dateTime => _dateTime ?? '';
  bool hasDateTime() => _dateTime != null;

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _dateTime = snapshotData['DateTime'] as String?;
    _id = snapshotData['Id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Datepicked');

  static Stream<DatepickedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DatepickedRecord.fromSnapshot(s));

  static Future<DatepickedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DatepickedRecord.fromSnapshot(s));

  static DatepickedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DatepickedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DatepickedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DatepickedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DatepickedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DatepickedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDatepickedRecordData({
  String? dateTime,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'DateTime': dateTime,
      'Id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class DatepickedRecordDocumentEquality implements Equality<DatepickedRecord> {
  const DatepickedRecordDocumentEquality();

  @override
  bool equals(DatepickedRecord? e1, DatepickedRecord? e2) {
    return e1?.dateTime == e2?.dateTime && e1?.id == e2?.id;
  }

  @override
  int hash(DatepickedRecord? e) =>
      const ListEquality().hash([e?.dateTime, e?.id]);

  @override
  bool isValidKey(Object? o) => o is DatepickedRecord;
}
