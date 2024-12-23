import 'package:json_annotation/json_annotation.dart';

part 'peserta.g.dart';

@JsonSerializable()
class Peserta {
  
  final String nik;
  final String nmPeserta;

  Peserta(this.nik, this.nmPeserta);

  factory Peserta.fromJson(Map<String, dynamic> json) => _$PesertaFromJson(json);
  Map<String, dynamic> toJson() => _$PesertaToJson(this);

}