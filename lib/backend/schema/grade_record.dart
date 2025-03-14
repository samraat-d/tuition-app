import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GradeRecord extends FirestoreRecord {
  GradeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "gradename" field.
  String? _gradename;
  String get gradename => _gradename ?? '';
  bool hasGradename() => _gradename != null;

  // "school_id" field.
  DocumentReference? _schoolId;
  DocumentReference? get schoolId => _schoolId;
  bool hasSchoolId() => _schoolId != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _gradename = snapshotData['gradename'] as String?;
    _schoolId = snapshotData['school_id'] as DocumentReference?;
    _userId = snapshotData['user_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('grade');

  static Stream<GradeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GradeRecord.fromSnapshot(s));

  static Future<GradeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GradeRecord.fromSnapshot(s));

  static GradeRecord fromSnapshot(DocumentSnapshot snapshot) => GradeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GradeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GradeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GradeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GradeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGradeRecordData({
  String? gradename,
  DocumentReference? schoolId,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'gradename': gradename,
      'school_id': schoolId,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class GradeRecordDocumentEquality implements Equality<GradeRecord> {
  const GradeRecordDocumentEquality();

  @override
  bool equals(GradeRecord? e1, GradeRecord? e2) {
    return e1?.gradename == e2?.gradename &&
        e1?.schoolId == e2?.schoolId &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(GradeRecord? e) =>
      const ListEquality().hash([e?.gradename, e?.schoolId, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is GradeRecord;
}
