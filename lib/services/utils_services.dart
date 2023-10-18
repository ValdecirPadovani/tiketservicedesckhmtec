import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:tiketservicedesckhmtec/config/app_data.dart' as appData;


class UtilServices{



  //Retorna qual o proximo código do chamado
  String getTicketCodeNext()
  {
      NumberFormat formatNumTicket = NumberFormat('000000000');

    return formatNumTicket.format(appData.getTicketToList.length+1).toString();
  }


  //Formatador de datas
  String formatDateTime(DateTime dateTime)
  {
    initializeDateFormatting();

    DateFormat dateFormat = DateFormat.yMd('pt_BR').add_Hm();
    return dateFormat.format(dateTime);
  }
}