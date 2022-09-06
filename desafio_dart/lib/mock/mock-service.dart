import 'package:desafio_dart/mock/mocked-lists.dart';
import 'package:desafio_dart/repositories/address-repository.dart';
import 'package:desafio_dart/repositories/company-repository.dart';
import 'package:desafio_dart/repositories/legal-person-repository.dart';
import 'package:desafio_dart/repositories/physical-person-repository.dart';

class MockService {
  final AddressRepository addressRepository;

  final CompanyRepository companyRepository;

  final LegalPersonRepository legalPersonRepository;

  final PhysicalPersonRepository physicalPersonRepository;

  MockService({
    required this.addressRepository,
    required this.companyRepository,
    required this.legalPersonRepository,
    required this.physicalPersonRepository,
  }) {
    _initialize();
  }

  void _initialize() {
    _createAddresses();
    _createCompanies();
    _createPhysicalPeople();
    _createLegalPeople();
  }

  void _createAddresses() {
    for (final address in MockedLists.mockedAddresses) {
      addressRepository.create(
        street: address["street"],
        number: address["number"],
        neighboorhood: address["neighboorhood"],
        city: address["city"],
        complement: address["complement"],
        zipCode: address["zipCode"],
        state: address["state"],
      );
    }
  }

  void _createCompanies() {
    final addresses = addressRepository.getAll();

    for (final company in MockedLists.mockedCompanies) {
      final address = addresses.first;

      companyRepository.create(
        fantasyName: company["fantasyName"],
        corporateName: company["corporateName"],
        cnpj: company["cnpj"],
        addressId: address.id,
        phone: company["phone"],
      );
    }
  }

  void _createPhysicalPeople() {
    for (final physicalPerson in MockedLists.mockedPhysicalPeople) {
      final address = addressRepository.create(
        street: physicalPerson["street"],
        number: physicalPerson["number"],
        neighboorhood: physicalPerson["neighboorhood"],
        city: physicalPerson["city"],
        complement: physicalPerson["complement"],
        zipCode: physicalPerson["zipCode"],
        state: physicalPerson["state"],
      );

      physicalPersonRepository.create(
        addressId: address.id,
        cpf: physicalPerson["cpf"],
        name: physicalPerson["name"],
      );
    }
  }

  void _createLegalPeople() {
    for (final physicalPerson in MockedLists.mockedLegalPeople) {
      final address = addressRepository.create(
        street: physicalPerson["street"],
        number: physicalPerson["number"],
        neighboorhood: physicalPerson["neighboorhood"],
        city: physicalPerson["city"],
        complement: physicalPerson["complement"],
        zipCode: physicalPerson["zipCode"],
        state: physicalPerson["state"],
      );

      legalPersonRepository.create(
        addressId: address.id,
        cnpj: physicalPerson["cnpj"],
        corporateName: physicalPerson["corporateName"],
        fantasyName: physicalPerson["fantasyName"],
        phone: physicalPerson["phone"],
      );
    }
  }
}
