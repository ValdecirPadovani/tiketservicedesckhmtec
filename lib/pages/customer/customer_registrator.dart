import 'package:flutter/material.dart';
import 'package:tiketservicedesckhmtec/common_widgets/custom_text_field.dart';

class CustomerRegistrator extends StatelessWidget {
  const CustomerRegistrator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de clientes"),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children:  [
          //Nome do cliente
         const CustomTextField(icon: Icons.add_business, label: "Nome do cliente"),

          //CNPJ cliente
         const CustomTextField(icon: Icons.file_copy, label: "CNPJ"),

          //editar cliente
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
               print("teste");
              },
              child: const Text("Salvar cliente"),
            ),
          )
        ],
      ),
    );
  }
}
