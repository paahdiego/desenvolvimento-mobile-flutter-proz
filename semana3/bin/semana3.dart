import 'utils.dart';

void main(List<String> arguments) {
  final valorTotal = receiveDoubleFromUser(
    message: "digite um valor total da compra",
  );

  print(
    """\n\n
    Digite o tipo de cliente:
    1. Cliente Comum
    2. Funcionário
    3. Vip
    """,
  );

  final tipoDeCliente = receiveIntegerFromUser(
    message: "digite um tipo de cliente",
    start: 1,
    end: 3,
  );

  double discountFactor = 1.0;

  switch (tipoDeCliente) {
    case 1:
      break;
    case 2:
      discountFactor = 0.9;
      break;
    case 3:
      discountFactor = 0.95;
      break;
    default:
      print("\nopção inválida para tipo de cliente.");
      break;
  }

  print(
    """
    Tipo de cliente: ${clientTypeNameByNumber(tipoDeCliente)}
    Desconto: ${((1 - discountFactor) * 100).round()} %
    Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}
    Valor a pagar: R\$ ${(valorTotal * discountFactor).toStringAsFixed(2)} 
    """,
  );
}
