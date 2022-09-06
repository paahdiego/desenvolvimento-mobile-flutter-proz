import 'package:desafio_dart/models/object-id.dart';

class LegalPerson extends ObjectId {
  final String fantasyName;
  final String corporateName;
  final String cnpj;
  final String addressId;

  LegalPerson({
    required super.id,
    required this.cnpj,
    required this.fantasyName,
    required this.corporateName,
    required this.addressId,
    required super.createdAt,
  });

  @override
  String toString() {
    return 'LegalPerson(id: $id,fantasyName: $fantasyName, corporateName: $corporateName, cnpj: $cnpj, addressId: $addressId, createdAt: $createdAt)';
  }
}
