import 'package:desafio_dart/models/address.dart';
import 'package:uuid/uuid.dart';

class AddressRepository {
  final _addresses = <Address>[];

  final uuid = Uuid();

  Address create({
    required String street,
    required String number,
    required String neighboorhood,
    required String city,
    required String complement,
    required String zipCode,
    required String state,
  }) {
    final address = Address(
      city: city,
      complement: complement,
      createdAt: DateTime.now(),
      id: uuid.v1(),
      neighboorhood: neighboorhood,
      number: number,
      state: state,
      street: street,
      zipCode: zipCode,
    );

    _addresses.add(address);

    return address;
  }

  List<Address> getAll() {
    return _addresses;
  }

  Address? findById(String id) {
    final address = _addresses.firstWhere((element) => element.id == id);

    print(address);

    return null;
  }

  void deleteById(String id) {
    _addresses.removeWhere((element) => element.id == id);
  }
}
