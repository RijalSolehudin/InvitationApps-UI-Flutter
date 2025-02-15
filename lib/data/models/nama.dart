class TamuModel {
  final int? id;
  final String nama;
  final String waktu;
  final String status;
  final String? tipeKontak;
  final String absen;

  TamuModel({
    required this.id,
    required this.nama,
    required this.waktu,
    required this.status,
    this.tipeKontak,
    required this.absen,
  });
}

final tamu = [
  TamuModel(
      id: 1,
      nama: 'Moch Nizwar Syafuan',
      waktu: "22/03/2023 09.00",
      status: "Checked In",
      tipeKontak: "wa",
      absen: "hadir"),
  TamuModel(
      id: 2,
      nama: 'Alfi Firdaus',
      waktu: "22/03/2023 09.00",
      status: "Checked In",
      tipeKontak: "telepon",
      absen: "tidak hadir"),
  TamuModel(
      id: 3,
      nama: 'Moch Nizwar Syafuan',
      waktu: "22/03/2023 09.00",
      status: "Checked In",
      tipeKontak: "telepon",
      absen: "tidak hadir"),
  TamuModel(
      id: 4,
      nama: 'Alfi Firdaus',
      waktu: "22/03/2023 09.00",
      status: "Checked In",
      tipeKontak: "wa",
      absen: "masih ragu"),
  TamuModel(
      id: 5,
      nama: 'Moch Nizwar Syafuan',
      waktu: "22/03/2023 09.00",
      status: "Checked In",
      tipeKontak: "wa",
      absen: "hadir"),
  TamuModel(
      id: 6,
      nama: 'Alfi Firdaus',
      waktu: "22/03/2023 09.00",
      status: "Checked In",
      tipeKontak: "wa",
      absen: "hadir"),
  TamuModel(
      id: 7,
      nama: 'Moch Nizwar Syafuan',
      waktu: "22/03/2023 09.00",
      status: "Checked In",
      tipeKontak: "telepon",
      absen: "masih ragu"),
  TamuModel(
      id: 8,
      nama: 'Alfi Firdaus',
      waktu: "22/03/2023 09.00",
      status: "Checked In",
      tipeKontak: "wa",
      absen: "hadir"),
  TamuModel(
      id: 9,
      nama: 'Moch Nizwar Syafuan',
      waktu: "22/03/2023 09.00",
      status: "Checked In",
      tipeKontak: "wa",
      absen: "hadir"),
  TamuModel(
      id: 10,
      nama: 'Alfi Firdaus',
      waktu: "22/03/2023 09.00",
      status: "Checked In",
      tipeKontak: "wa",
      absen: "hadir"),
  TamuModel(
      id: 11,
      nama: 'Moch Nizwar Syafuan',
      waktu: "22/03/2023 09.00",
      status: "Checked In",
      tipeKontak: "wa",
      absen: "hadir"),
  TamuModel(
      id: 12,
      nama: 'Alfi Firdaus',
      waktu: "22/03/2023 09.00",
      status: "Checked In",
      tipeKontak: "wa",
      absen: "hadir"),
  TamuModel(
      id: 13,
      nama: 'Moch Nizwar Syafuan',
      waktu: "22/03/2023 09.00",
      status: "Checked In",
      tipeKontak: "wa",
      absen: "hadir"),
];
