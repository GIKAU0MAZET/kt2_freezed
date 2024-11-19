import 'package:freezed_annotation/freezed_annotation.dart';
import 'product_model.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {

  factory CartModel({
    required int id,
    required int userId,
    required List<ProductModel> porducts,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);
}