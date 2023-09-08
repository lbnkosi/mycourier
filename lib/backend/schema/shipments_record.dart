import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShipmentsRecord extends FirestoreRecord {
  ShipmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "updated" field.
  DateTime? _updated;
  DateTime? get updated => _updated;
  bool hasUpdated() => _updated != null;

  // "driver_id" field.
  String? _driverId;
  String get driverId => _driverId ?? '';
  bool hasDriverId() => _driverId != null;

  // "sender_id" field.
  String? _senderId;
  String get senderId => _senderId ?? '';
  bool hasSenderId() => _senderId != null;

  // "recipient_name" field.
  String? _recipientName;
  String get recipientName => _recipientName ?? '';
  bool hasRecipientName() => _recipientName != null;

  // "recipient_surname" field.
  String? _recipientSurname;
  String get recipientSurname => _recipientSurname ?? '';
  bool hasRecipientSurname() => _recipientSurname != null;

  // "shipment_code" field.
  String? _shipmentCode;
  String get shipmentCode => _shipmentCode ?? '';
  bool hasShipmentCode() => _shipmentCode != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _created = snapshotData['created'] as DateTime?;
    _updated = snapshotData['updated'] as DateTime?;
    _driverId = snapshotData['driver_id'] as String?;
    _senderId = snapshotData['sender_id'] as String?;
    _recipientName = snapshotData['recipient_name'] as String?;
    _recipientSurname = snapshotData['recipient_surname'] as String?;
    _shipmentCode = snapshotData['shipment_code'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shipments');

  static Stream<ShipmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShipmentsRecord.fromSnapshot(s));

  static Future<ShipmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShipmentsRecord.fromSnapshot(s));

  static ShipmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShipmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShipmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShipmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShipmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShipmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShipmentsRecordData({
  String? id,
  String? name,
  DateTime? created,
  DateTime? updated,
  String? driverId,
  String? senderId,
  String? recipientName,
  String? recipientSurname,
  String? shipmentCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'created': created,
      'updated': updated,
      'driver_id': driverId,
      'sender_id': senderId,
      'recipient_name': recipientName,
      'recipient_surname': recipientSurname,
      'shipment_code': shipmentCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShipmentsRecordDocumentEquality implements Equality<ShipmentsRecord> {
  const ShipmentsRecordDocumentEquality();

  @override
  bool equals(ShipmentsRecord? e1, ShipmentsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.created == e2?.created &&
        e1?.updated == e2?.updated &&
        e1?.driverId == e2?.driverId &&
        e1?.senderId == e2?.senderId &&
        e1?.recipientName == e2?.recipientName &&
        e1?.recipientSurname == e2?.recipientSurname &&
        e1?.shipmentCode == e2?.shipmentCode;
  }

  @override
  int hash(ShipmentsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.name,
        e?.created,
        e?.updated,
        e?.driverId,
        e?.senderId,
        e?.recipientName,
        e?.recipientSurname,
        e?.shipmentCode
      ]);

  @override
  bool isValidKey(Object? o) => o is ShipmentsRecord;
}
