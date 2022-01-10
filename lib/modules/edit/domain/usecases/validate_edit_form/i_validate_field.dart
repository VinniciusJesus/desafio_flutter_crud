import '../../../../../features/products/item/index.dart';

abstract class IValidateField {
  bool validate(ProductItem item);
  bool validateRequiredInput(String txt);
  bool validateMaxLenght(String txt);
  bool validateMinLenght(String txt);
}
