import 'package:desafio_dart/models/object-id.dart';

class PhysicalPerson extends ObjectId {
  final String name;
  final String cpf;
  final String addressId;

  PhysicalPerson({
    required super.id,
    required this.name,
    required this.cpf,
    required this.addressId,
    required super.createdAt,
  });
}
