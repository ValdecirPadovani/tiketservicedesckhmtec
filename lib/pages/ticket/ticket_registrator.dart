import 'package:flutter/material.dart';
import 'package:tiketservicedesckhmtec/common_widgets/custom_text_field.dart';
import 'package:tiketservicedesckhmtec/config/app_data.dart' as appData;
import 'package:tiketservicedesckhmtec/services/utils_services.dart';

class TicketRegistrator extends StatelessWidget {

  final UtilServices utilServices = UtilServices();

  TicketRegistrator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Registro de novo ticket"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          //código do tiket
           CustomTextField(
            icon: Icons.abc,
            label: "Código",
            readOnle: true,
            initValue: utilServices.getTicketCodeNext(),
          ),
          //Nome do cliente
          const CustomTextField(
            icon: Icons.business,
            label: "Cliente",
          ),
          //Erro reportado
          //Trocar esse campo para um que seja maior https://www.youtube.com/watch?v=FUj2jRKpZ4c
          const CustomTextField(
            icon: Icons.abc,
            label: "Erro",
          ),
          
          ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 150,
              minWidth: 150,
              maxHeight: 150,
              maxWidth: 150
            ),
            child: TextField(
              
              maxLines: null,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.abc),
                labelText: "Erro reportado",
                  isDense: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(18))
              ),
            ),
          ),

          //Anexar arquivos
          Container(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return TextButton(
                  onPressed: () {},
                  child: Text(
                    appData.ticket2.urlFiles[index],
                    style: TextStyle(color: Colors.blue),
                  ),
                );
              },
              separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
              itemCount: appData.ticket2.urlFiles.length,
            ),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("Anexar arquivo",
                    style: TextStyle(
                      color: Colors.blue,
                    )),
              ),
            ],
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18)
              )
            ),
            onPressed: () {},
            child: const Text("Salvar", style: TextStyle(fontSize: 18)),
          )
        ],
      ),
    );
  }
}
