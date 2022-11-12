// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'request_model.g.dart';

@JsonSerializable()
class RequestFormData {
  @JsonKey(name: "key")
  String? key;
  @JsonKey(name: "value")
  String? value;
  @JsonKey(name: "type")
  String? type;

  RequestFormData(this.key, this.value, this.type);
  factory RequestFormData.fromJson(Map<String, dynamic> json) =>
      _$RequestFormDataFromJson(json);

// to json
  Map<String, dynamic> toJson() => _$RequestFormDataToJson(this);
}

class RegisterRequestBody {
  final String name;
  final String email;
  final String phone;
  final String country_code;
  final String password_confirm;
  final String password;

  RegisterRequestBody({
    required this.name,
    required this.email,
    required this.phone,
    required this.country_code,
    required this.password_confirm,
    required this.password,
  });

  Map<String, List<Map<String, dynamic>>> toMap() {
    List<RequestFormData> list = [];

    list.add(RequestFormData("name", name, "default"));
    list.add(RequestFormData("email", email, "default"));
    list.add(RequestFormData("phone", phone, "default"));
    list.add(RequestFormData("password", password, "default"));
    list.add(RequestFormData("country_code", phone, "default"));
    list.add(RequestFormData("password_confirm", password_confirm, "default"));

    return {"formdata": list.map((e) => e.toJson()).toList()};
  }
}

class LoginRequestBody {
  final String email;
  final String password;
  LoginRequestBody({
    required this.email,
    required this.password,
  });

  Map<String, List<Map<String, dynamic>>> toMap() {
    List<RequestFormData> list = [];
    list.add(RequestFormData("email", email, "default"));
    list.add(RequestFormData("password", password, "default"));
    return {"formdata": list.map((e) => e.toJson()).toList()};
  }
}
