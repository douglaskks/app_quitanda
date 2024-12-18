import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';

class UtilsServices {
  // R$ Valor
  priceToCurrency(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');

    return numberFormat.format(price);
  }

  String formatDateTime(DateTime dateTime) {
  initializeDateFormatting(Intl.defaultLocale = 'pt_BR', '');
  DateFormat dateFormat = DateFormat.yMd('pt_BR').add_Hm();

  return dateFormat.format(dateTime);
}

}
