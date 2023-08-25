import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DurationRainRecord extends FirestoreRecord {
  DurationRainRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "DurationRain" field.
  String? _durationRain;
  String get durationRain => _durationRain ?? '';
  bool hasDurationRain() => _durationRain != null;

  void _initializeFields() {
    _id = snapshotData['Id'] as String?;
    _durationRain = snapshotData['DurationRain'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DurationRain');

  static Stream<DurationRainRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DurationRainRecord.fromSnapshot(s));

  static Future<DurationRainRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DurationRainRecord.fromSnapshot(s));

  static DurationRainRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DurationRainRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DurationRainRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DurationRainRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DurationRainRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DurationRainRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDurationRainRecordData({
  String? id,
  String? durationRain,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id': id,
      'DurationRain': durationRain,
    }.withoutNulls,
  );

  return firestoreData;
}

class DurationRainRecordDocumentEquality
    implements Equality<DurationRainRecord> {
  const DurationRainRecordDocumentEquality();

  @override
  bool equals(DurationRainRecord? e1, DurationRainRecord? e2) {
    return e1?.id == e2?.id && e1?.durationRain == e2?.durationRain;
  }

  @override
  int hash(DurationRainRecord? e) =>
      const ListEquality().hash([e?.id, e?.durationRain]);

  @override
  bool isValidKey(Object? o) => o is DurationRainRecord;
}
