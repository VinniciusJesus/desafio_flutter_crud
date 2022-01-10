import '../../../../../app/widgets/index.dart';
import '../../../../../features/products/item/index.dart';
import '../../../../../features/validation/max_length/index.dart';
import '../../../../../features/validation/min_length/index.dart';
import '../validate_edit_form/index.dart';

class ValidateTitle implements IValidateField {
  final _snack = SnackbarImpl();

  @override
  bool validate(ProductItem item) {
    if (validateRequiredInput(item.title) != true) {
      return false;
    }
    if (validateMaxLenght(item.title) != true) {
      return false;
    }
    if (validateMinLenght(item.title) != true) {
      return false;
    }
    return true;
  }

  @override
  bool validateMaxLenght(String txt) {
    if (MaxLengthValidate().validate(txt, 30) != true) {
      _snack.error("Desculpe, título muito longo.");
      return false;
    }
    return true;
  }

  @override
  bool validateMinLenght(String txt) {
    if (MinLengthValidate().validate(txt, 2) != true) {
      _snack.error("Desculpe, título muito curto.");
      return false;
    }
    return true;
  }

  @override
  bool validateRequiredInput(String txt) {
    if (txt.isEmpty) {
      _snack.error("Por favor, digite o título.");
      return false;
    }
    return true;
  }
}
