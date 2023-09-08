import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DriverRecord extends FirestoreRecord {
  DriverRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "surname" field.
  String? _surname;
  String get surname => _surname ?? '';
  bool hasSurname() => _surname != null;

  // "vehicle_make" field.
  String? _vehicleMake;
  String get vehicleMake => _vehicleMake ?? '';
  bool hasVehicleMake() => _vehicleMake != null;

  // "vehicle_model" field.
  String? _vehicleModel;
  String get vehicleModel => _vehicleModel ?? '';
  bool hasVehicleModel() => _vehicleModel != null;

  // "vehicle_variant" field.
  String? _vehicleVariant;
  String get vehicleVariant => _vehicleVariant ?? '';
  bool hasVehicleVariant() => _vehicleVariant != null;

  // "vehicle_year" field.
  String? _vehicleYear;
  String get vehicleYear => _vehicleYear ?? '';
  bool hasVehicleYear() => _vehicleYear != null;

  // "vehicle_reg_number" field.
  String? _vehicleRegNumber;
  String get vehicleRegNumber => _vehicleRegNumber ?? '';
  bool hasVehicleRegNumber() => _vehicleRegNumber != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _surname = snapshotData['surname'] as String?;
    _vehicleMake = snapshotData['vehicle_make'] as String?;
    _vehicleModel = snapshotData['vehicle_model'] as String?;
    _vehicleVariant = snapshotData['vehicle_variant'] as String?;
    _vehicleYear = snapshotData['vehicle_year'] as String?;
    _vehicleRegNumber = snapshotData['vehicle_reg_number'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('driver');

  static Stream<DriverRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DriverRecord.fromSnapshot(s));

  static Future<DriverRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DriverRecord.fromSnapshot(s));

  static DriverRecord fromSnapshot(DocumentSnapshot snapshot) => DriverRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DriverRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DriverRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DriverRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DriverRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDriverRecordData({
  String? name,
  String? surname,
  String? vehicleMake,
  String? vehicleModel,
  String? vehicleVariant,
  String? vehicleYear,
  String? vehicleRegNumber,
  String? phoneNumber,
  String? email,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'surname': surname,
      'vehicle_make': vehicleMake,
      'vehicle_model': vehicleModel,
      'vehicle_variant': vehicleVariant,
      'vehicle_year': vehicleYear,
      'vehicle_reg_number': vehicleRegNumber,
      'phone_number': phoneNumber,
      'email': email,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class DriverRecordDocumentEquality implements Equality<DriverRecord> {
  const DriverRecordDocumentEquality();

  @override
  bool equals(DriverRecord? e1, DriverRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.surname == e2?.surname &&
        e1?.vehicleMake == e2?.vehicleMake &&
        e1?.vehicleModel == e2?.vehicleModel &&
        e1?.vehicleVariant == e2?.vehicleVariant &&
        e1?.vehicleYear == e2?.vehicleYear &&
        e1?.vehicleRegNumber == e2?.vehicleRegNumber &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.email == e2?.email &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(DriverRecord? e) => const ListEquality().hash([
        e?.name,
        e?.surname,
        e?.vehicleMake,
        e?.vehicleModel,
        e?.vehicleVariant,
        e?.vehicleYear,
        e?.vehicleRegNumber,
        e?.phoneNumber,
        e?.email,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is DriverRecord;
}
