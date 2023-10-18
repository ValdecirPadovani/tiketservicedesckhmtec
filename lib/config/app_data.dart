


//Provedor de dados para teste  82.471.646/0001-11

import 'package:tiketservicedesckhmtec/models/customer_model.dart';
import 'package:tiketservicedesckhmtec/models/ticket_model.dart';
import 'package:tiketservicedesckhmtec/pages/ticket/ticket_registrator.dart';

CustomerModel customer = CustomerModel(name: "MEMO", cnpj: "82.471.646/0001-11");
CustomerModel customer1 = CustomerModel(name: "FRIG", cnpj: "82.471.646/0001-11");
CustomerModel customer3 = CustomerModel(name: "PRIME", cnpj: "82.471.646/0001-11");
CustomerModel customer2 = CustomerModel(name: "GSW", cnpj: "82.471.646/0001-11");

List<String> prints = ['Erro001.png', 'Erro002.png'];
List<String> prints2 = ['Erro003.png', 'Erro002.png', 'Erro002.png', 'Erro002.png', 'Erro002.png', 'Erro002.png', 'Erro002.png', 'Erro002.png'];

TicketModel ticket = TicketModel(ticketId: "000001", customer: customer, error: "Não consigo acessar o sistema", urlFiles: prints);
TicketModel ticket2 = TicketModel(ticketId: "000002", customer: customer, error: "Não consigo acessar o sistema", urlFiles: prints2);
TicketModel ticket3 = TicketModel(ticketId: "000003", customer: customer, error: "Não consigo acessar o sistema", urlFiles: prints2);

List<TicketModel> getTicketToList = [ticket,ticket2, ticket3];