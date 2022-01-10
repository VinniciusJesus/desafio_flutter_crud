import '../../../../../app/widgets/index.dart';
import '../../../../../features/products/item/index.dart';
import '../../../../../features/validation/max_length/index.dart';
import '../../../../../features/validation/min_length/index.dart';
import '../validate_edit_form/index.dart';

class ValidateDescription implements IValidateField {
  final _snack = SnackbarImpl();

  @override
  bool validate(ProductItem item) {
    if (validateRequiredInput(item.description) != true) {
      return false;
    }
    if (validateMaxLenght(item.description) != true) {
      return false;
    }
    if (validateMinLenght(item.description) != true) {
      return false;
    }
    return true;
  }

  @override
  bool validateMaxLenght(String txt) {
    if (MaxLengthValidate().validate(txt, 80) != true) {
      _snack.error("Desculpe, descrição muito longa.");
      return false;
    }
    return true;
  }

  @override
  bool validateMinLenght(String txt) {
    if (MinLengthValidate().validate(txt, 2) != true) {
      _snack.error("Desculpe, descrição muito curta.");
      return false;
    }
    return true;
  }

  @override
  bool validateRequiredInput(String txt) {
    if (txt.isEmpty) {
      _snack.error("Por favor, digite o descrição.");
      return false;
    }
    return true;
  }
}
