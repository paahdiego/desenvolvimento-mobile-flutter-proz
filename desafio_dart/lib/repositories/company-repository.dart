import 'package:desafio_dart/models/company.dart';
import 'package:uuid/uuid.dart';

import '../models/company.dart';

class CompanyRepository {
  final _companies = <Company>[];

  final uuid = Uuid();

  Company create({
    required String fantasyName,
    required String corporateName,
    required String cnpj,
    required String addressId,
    required String phone,
  }) {
    final company = Company(
      createdAt: DateTime.now(),
      id: uuid.v1(),
      fantasyName: fantasyName,
      corporateName: corporateName,
      cnpj: cnpj,
      addressId: addressId,
      phone: phone,
    );

    _companies.add(company);

    return company;
  }

  List<Company> getAll() {
    return _companies;
  }

  Company? findById(String id) {
    final company = _companies.firstWhere((element) => element.id == id);

    print(company);

    return null;
  }

  void deleteById(String id) {
    _companies.removeWhere((element) => element.id == id);
  }
}
