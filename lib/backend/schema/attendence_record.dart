import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttendenceRecord extends FirestoreRecord {
  AttendenceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "datetime" field.
  DateTime? _datetime;
  DateTime? get datetime => _datetime;
  bool hasDatetime() => _datetime != null;

  // "student_id" field.
  DocumentReference? _studentId;
  DocumentReference? get studentId => _studentId;
  bool hasStudentId() => _studentId != null;

  // "school_id" field.
  DocumentReference? _schoolId;
  DocumentReference? get schoolId => _schoolId;
  bool hasSchoolId() => _schoolId != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "hours" field.
  int? _hours;
  int get hours => _hours ?? 0;
  bool hasHours() => _hours != null;

  void _initializeFields() {
    _datetime = snapshotData['datetime'] as DateTime?;
    _studentId = snapshotData['student_id'] as DocumentReference?;
    _schoolId = snapshotData['school_id'] as DocumentReference?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _hours = castToType<int>(snapshotData['hours']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('attendence');

  static Stream<AttendenceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AttendenceRecord.fromSnapshot(s));

  static Future<AttendenceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AttendenceRecord.fromSnapshot(s));

  static AttendenceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AttendenceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AttendenceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AttendenceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AttendenceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AttendenceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAttendenceRecordData({
  DateTime? datetime,
  DocumentReference? studentId,
  DocumentReference? schoolId,
  DocumentReference? userId,
  int? hours,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'datetime': datetime,
      'student_id': studentId,
      'school_id': schoolId,
      'user_id': userId,
      'hours': hours,
    }.withoutNulls,
  );

  return firestoreData;
}

class AttendenceRecordDocumentEquality implements Equality<AttendenceRecord> {
  const AttendenceRecordDocumentEquality();

  @override
  bool equals(AttendenceRecord? e1, AttendenceRecord? e2) {
    return e1?.datetime == e2?.datetime &&
        e1?.studentId == e2?.studentId &&
        e1?.schoolId == e2?.schoolId &&
        e1?.userId == e2?.userId &&
        e1?.hours == e2?.hours;
  }

  @override
  int hash(AttendenceRecord? e) => const ListEquality()
      .hash([e?.datetime, e?.studentId, e?.schoolId, e?.userId, e?.hours]);

  @override
  bool isValidKey(Object? o) => o is AttendenceRecord;
}
