import '../../../../../app/widgets/index.dart';
import '../../../../../features/products/item/index.dart';
import '../validate_description/index.dart';
import '../validate_title/index.dart';
import '../validate_type/index.dart';

class ValidateEditFrom {
  final _snack = SnackbarImpl();

  bool validate(ProductItem item) {
    if (ValidateTitle().validate(item) != true) return false;
    if (ValidateType().validate(item) != true) return false;
    if (ValidateDescription().validate(item) != true) return false;

    return true;
  }
}
