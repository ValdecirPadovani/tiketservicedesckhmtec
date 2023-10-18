import 'package:tiketservicedesckhmtec/models/customer_model.dart';

class TicketModel {
  //código do tiket
  String ticketId;

  //Nome do cliente
  CustomerModel customer;

  //Erro reportado
  String error;

  //Anexar arquivos
  List<String> urlFiles;

  TicketModel({
    required this.ticketId,
    required this.customer,
    required this.error,
    required this.urlFiles,
  });
}
