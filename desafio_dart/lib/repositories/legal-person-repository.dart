import 'package:desafio_dart/models/legal-person.dart';
import 'package:uuid/uuid.dart';

class LegalPersonRepository {
  final _legalPeople = <LegalPerson>[];

  final uuid = Uuid();

  LegalPerson create({
    required String fantasyName,
    required String corporateName,
    required String cnpj,
    required String addressId,
    required String phone,
  }) {
    final legalPerson = LegalPerson(
      createdAt: DateTime.now(),
      id: uuid.v1(),
      fantasyName: fantasyName,
      corporateName: corporateName,
      cnpj: cnpj,
      addressId: addressId,
    );

    _legalPeople.add(legalPerson);

    return legalPerson;
  }

  List<LegalPerson> getAll() {
    return _legalPeople;
  }

  LegalPerson? findById(String id) {
    final legalPerson = _legalPeople.firstWhere((element) => element.id == id);

    print(legalPerson);

    return null;
  }

  void deleteById(String id) {
    _legalPeople.removeWhere((element) => element.id == id);
  }
}
