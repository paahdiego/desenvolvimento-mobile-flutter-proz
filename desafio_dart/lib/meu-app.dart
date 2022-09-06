import 'package:desafio_dart/mock/mock-service.dart';
import 'package:desafio_dart/repositories/address-repository.dart';
import 'package:desafio_dart/repositories/company-repository.dart';
import 'package:desafio_dart/repositories/legal-person-repository.dart';
import 'package:desafio_dart/repositories/physical-person-repository.dart';

void myApp() {
  final companyRepository = CompanyRepository();

  final addressRepository = AddressRepository();

  final physicalPersonRepository = PhysicalPersonRepository();

  final legalPersonRepository = LegalPersonRepository();

  final mockedService = MockService(
    addressRepository: addressRepository,
    companyRepository: companyRepository,
    legalPersonRepository: legalPersonRepository,
    physicalPersonRepository: physicalPersonRepository,
  );

  // for (final company in companies) {
  //   print(company);
  // }
}
