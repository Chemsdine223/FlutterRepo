import 'dart:convert';

class UserModel {
  final int id;
  final String nom;
  final String prenom;
  final String nni;
  final String nomVaccination;
  final String centre;
  final String doseNumber;
  final String doseAdministre;
  final String dateDernierDose;
  final String status;
  final String wilaya;
  final String moughataa;







  UserModel(
    this.id,
    this.nom,
    this.prenom,
    this.nni,
    this.nomVaccination,
    this.centre,
    this.doseNumber,
    this.doseAdministre,
    this.dateDernierDose,
    this.status,
    this.wilaya,
    this.moughataa,
  );

  UserModel copyWith({
    int? id,
    String? nom,
    String? prenom,
    String? nni,
    String? nomVaccination,
    String? centre,
    String? doseNumber,
    String? doseAdministre,
    String? dateDernierDose,
    String? status,
    String? wilaya,
    String? moughataa,
  }) {
    return UserModel(
      id ?? this.id,
      nom ?? this.nom,
      prenom ?? this.prenom,
      nni ?? this.nni,
      nomVaccination ?? this.nomVaccination,
      centre ?? this.centre,
      doseNumber ?? this.doseNumber,
      doseAdministre ?? this.doseAdministre,
      dateDernierDose ?? this.dateDernierDose,
      status ?? this.status,
      wilaya ?? this.wilaya,
      moughataa ?? this.moughataa,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'nom': nom});
    result.addAll({'prenom': prenom});
    result.addAll({'nni': nni});
    result.addAll({'nomVaccination': nomVaccination});
    result.addAll({'centre': centre});
    result.addAll({'doseNumber': doseNumber});
    result.addAll({'doseAdministre': doseAdministre});
    result.addAll({'dateDernierDose': dateDernierDose});
    result.addAll({'status': status});
    result.addAll({'wilaya': wilaya});
    result.addAll({'moughataa': moughataa});
  
    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      map['id']?.toInt() ?? 0,
      map['nom'] ?? '',
      map['prenom'] ?? '',
      map['nni'] ?? '',
      map['nomVaccination'] ?? '',
      map['centre'] ?? '',
      map['doseNumber'] ?? '',
      map['doseAdministre'] ?? '',
      map['dateDernierDose'] ?? '',
      map['status'] ?? '',
      map['wilaya'] ?? '',
      map['moughataa'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(id: $id, nom: $nom, prenom: $prenom, nni: $nni, nomVaccination: $nomVaccination, centre: $centre, doseNumber: $doseNumber, doseAdministre: $doseAdministre, dateDernierDose: $dateDernierDose, status: $status, wilaya: $wilaya, moughataa: $moughataa)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserModel &&
      other.id == id &&
      other.nom == nom &&
      other.prenom == prenom &&
      other.nni == nni &&
      other.nomVaccination == nomVaccination &&
      other.centre == centre &&
      other.doseNumber == doseNumber &&
      other.doseAdministre == doseAdministre &&
      other.dateDernierDose == dateDernierDose &&
      other.status == status &&
      other.wilaya == wilaya &&
      other.moughataa == moughataa;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      nom.hashCode ^
      prenom.hashCode ^
      nni.hashCode ^
      nomVaccination.hashCode ^
      centre.hashCode ^
      doseNumber.hashCode ^
      doseAdministre.hashCode ^
      dateDernierDose.hashCode ^
      status.hashCode ^
      wilaya.hashCode ^
      moughataa.hashCode;
  }
}
