import 'dart:convert';

import 'package:desafio_dart/models/object-id.dart';

class Company extends ObjectId {
  final String fantasyName;
  final String corporateName;
  final String cnpj;
  final String addressId;
  final String phone;

  Company({
    required super.id,
    required this.fantasyName,
    required this.corporateName,
    required this.cnpj,
    required this.addressId,
    required this.phone,
    required super.createdAt,
  });

  @override
  String toString() {
    return 'Company(id: $id, fantasyName: $fantasyName, corporateName: $corporateName, cnpj: $cnpj, addressId: $addressId, phone: $phone, createdAt: $createdAt)';
  }
}
