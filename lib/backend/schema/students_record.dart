import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentsRecord extends FirestoreRecord {
  StudentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "student_name" field.
  String? _studentName;
  String get studentName => _studentName ?? '';
  bool hasStudentName() => _studentName != null;

  // "school" field.
  DocumentReference? _school;
  DocumentReference? get school => _school;
  bool hasSchool() => _school != null;

  // "phonenumber" field.
  int? _phonenumber;
  int get phonenumber => _phonenumber ?? 0;
  bool hasPhonenumber() => _phonenumber != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "grade" field.
  DocumentReference? _grade;
  DocumentReference? get grade => _grade;
  bool hasGrade() => _grade != null;

  void _initializeFields() {
    _studentName = snapshotData['student_name'] as String?;
    _school = snapshotData['school'] as DocumentReference?;
    _phonenumber = castToType<int>(snapshotData['phonenumber']);
    _userId = snapshotData['user_id'] as DocumentReference?;
    _grade = snapshotData['grade'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('students');

  static Stream<StudentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudentsRecord.fromSnapshot(s));

  static Future<StudentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudentsRecord.fromSnapshot(s));

  static StudentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentsRecordData({
  String? studentName,
  DocumentReference? school,
  int? phonenumber,
  DocumentReference? userId,
  DocumentReference? grade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'student_name': studentName,
      'school': school,
      'phonenumber': phonenumber,
      'user_id': userId,
      'grade': grade,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentsRecordDocumentEquality implements Equality<StudentsRecord> {
  const StudentsRecordDocumentEquality();

  @override
  bool equals(StudentsRecord? e1, StudentsRecord? e2) {
    return e1?.studentName == e2?.studentName &&
        e1?.school == e2?.school &&
        e1?.phonenumber == e2?.phonenumber &&
        e1?.userId == e2?.userId &&
        e1?.grade == e2?.grade;
  }

  @override
  int hash(StudentsRecord? e) => const ListEquality()
      .hash([e?.studentName, e?.school, e?.phonenumber, e?.userId, e?.grade]);

  @override
  bool isValidKey(Object? o) => o is StudentsRecord;
}
