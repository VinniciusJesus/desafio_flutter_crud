import '../../../../../app/widgets/index.dart';
import '../../../../../features/products/item/index.dart';
import '../../../../../features/validation/max_length/index.dart';
import '../../../../../features/validation/min_length/index.dart';
import '../validate_edit_form/index.dart';

class ValidateType implements IValidateField {
  final _snack = SnackbarImpl();

  @override
  bool validate(ProductItem item) {
    if (validateRequiredInput(item.type) != true) {
      return false;
    }
    if (validateMaxLenght(item.type) != true) {
      return false;
    }
    if (validateMinLenght(item.type) != true) {
      return false;
    }
    return true;
  }

  @override
  bool validateMaxLenght(String txt) {
    if (MaxLengthValidate().validate(txt, 20) != true) {
      _snack.error("Desculpe, tipo muito longo.");
      return false;
    }
    return true;
  }

  @override
  bool validateMinLenght(String txt) {
    if (MinLengthValidate().validate(txt, 2) != true) {
      _snack.error("Desculpe, tipo muito curto.");
      return false;
    }
    return true;
  }

  @override
  bool validateRequiredInput(String txt) {
    if (txt.isEmpty) {
      _snack.error("Por favor, digite o tipo.");
      return false;
    }
    return true;
  }
}
