//
//  KTPDataModel.swift
//  Scanify
//
//  Created by Iqbal Maulana on 01/08/21.
//

import Foundation

struct KTPData: Codable {
    enum CodingKeys: String, CodingKey {
        // Map the JSON key "url" to the Swift property name "htmlLink"
        case provinsi = "Provinsi"
        case kota = "Kota/Kabupaten"
        case nik = "NIK"
        case nama = "Nama"
        case tempatLahir = "Tempat Lahir"
        case tanggalLahir = "Tgl Lahir"
        case jenisKelamin = "Jenis Kelamin"
        case golDarah = "Gol Darah"
        case alamat = "Alamat"
        case RTRW = "RTRW"
        case kelurahan = "KelDesa"
        case kecamatan = "Kecamatan"
        case agama = "Agama"
        case statusPerkawinan = "Status Perkawinan"
        case pekerjaan = "Pekerjaan"
        case kewarganegaraan = "Kewarganegaraan"
        case berlakuHingga = "Berlaku Hingga"
    }
    
    var provinsi: String
    var kota: String
    var nik: String
    var nama: String
    var tempatLahir: String
    var tanggalLahir: String
    var jenisKelamin: String
    var golDarah: String
    var alamat: String
    var RTRW: String
    var kelurahan: String
    var kecamatan: String
    var agama: String
    var statusPerkawinan: String
    var pekerjaan: String
    var kewarganegaraan: String
    var berlakuHingga: String
}

struct KTPDetected: Codable {
    var ktp_detected: KTPData
}

struct KTPSuccess: Codable {
    var success: KTPDetected
}

let emptyKTP: KTPData = KTPData(provinsi: "", kota: "", nik: "", nama: "", tempatLahir: "", tanggalLahir: "", jenisKelamin: "", golDarah: "", alamat: "", RTRW: "", kelurahan: "", kecamatan: "", agama: "", statusPerkawinan: "", pekerjaan: "", kewarganegaraan: "", berlakuHingga: "")

let sampleKTP: KTPData = KTPData(provinsi: "Jawa Timur", kota: "Jember", nik: "123456789123", nama: "Iqbal Maulana", tempatLahir: "Jember", tanggalLahir: "19-06-2001", jenisKelamin: "Laki-laki", golDarah: "o", alamat: "Alamat Rumah", RTRW: "006007", kelurahan: "Sukosari", kecamatan: "Sukowono", agama: "Islam", statusPerkawinan: "Belum Kawin", pekerjaan: "Pelajar / Mahasiswa", kewarganegaraan: "WNI", berlakuHingga: "Seumur Hidup")
