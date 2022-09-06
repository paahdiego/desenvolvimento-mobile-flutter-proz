import 'package:desafio_dart/models/physical-person.dart';
import 'package:uuid/uuid.dart';

class PhysicalPersonRepository {
  final _physicalPerson = <PhysicalPerson>[];

  final uuid = Uuid();

  PhysicalPerson create({
    required String name,
    required String cpf,
    required String addressId,
  }) {
    final physicalPerson = PhysicalPerson(
      createdAt: DateTime.now(),
      id: uuid.v1(),
      name: name,
      cpf: cpf,
      addressId: addressId,
    );

    _physicalPerson.add(physicalPerson);

    return physicalPerson;
  }

  List<PhysicalPerson> getAll() {
    return _physicalPerson;
  }

  PhysicalPerson? findById(String id) {
    final physicalPerson =
        _physicalPerson.firstWhere((element) => element.id == id);

    print(physicalPerson);

    return null;
  }

  void deleteById(String id) {
    _physicalPerson.removeWhere((element) => element.id == id);
  }
}
