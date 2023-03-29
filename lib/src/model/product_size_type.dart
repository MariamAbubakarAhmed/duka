import 'package:pwanistore/src/model/categorical.dart';
import 'package:pwanistore/src/model/numerical.dart';

class ProductSizeType {
  List<Numerical>? numerical;
  List<Categorical>? categorical;

  ProductSizeType({this.numerical, this.categorical});
}