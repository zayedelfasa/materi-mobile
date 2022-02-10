// To parse this JSON data, do
//
//     final siswa = siswaFromJson(jsonString);

import 'dart:convert';

class Siswa {
    Siswa({
        this.siswaId,
        this.siswaNama,
        this.siswaAlamat,
    });

    final int siswaId;
    final String siswaNama;
    final String siswaAlamat;

    factory Siswa.fromRawJson(String str) => Siswa.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Siswa.fromJson(Map<String, dynamic> json) => Siswa(
        siswaId: json["siswa_id"] == null ? null : json["siswa_id"],
        siswaNama: json["siswa_nama"] == null ? null : json["siswa_nama"],
        siswaAlamat: json["siswa_alamat"] == null ? null : json["siswa_alamat"],
    );

    Map<String, dynamic> toJson() => {
        "siswa_id": siswaId == null ? null : siswaId,
        "siswa_nama": siswaNama == null ? null : siswaNama,
        "siswa_alamat": siswaAlamat == null ? null : siswaAlamat,
    };
}
