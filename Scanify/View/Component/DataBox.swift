//
//  DataBox.swift
//  Scanify
//
//  Created by Iqbal Maulana on 01/08/21.
//

import SwiftUI

struct DataBox: View {
    @Binding var data: KTPData
    
    var body: some View {
        VStack(spacing: 5) {
            VStack(spacing: 5) {
                HStack {
                    Text("Provinsi")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.provinsi)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("Kota / Kabupaten")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.kota)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("NIK")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.nik)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("Nama")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.nama)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("Tempat Lahir")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.tempatLahir)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("Tanggal Lahir")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.tanggalLahir)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("Jenis Kelamin")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.jenisKelamin)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("Golongan Darah")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.golDarah)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("Alamat")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.alamat)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("RT / RW")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.RTRW)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                
            }
            VStack(spacing: 5) {
                HStack {
                    Text("Kelurahan / Desa")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.kelurahan)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("Kecamatan")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.kecamatan)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("Agama")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.agama)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("Status Perkawinan")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.statusPerkawinan)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("Pekerjaan")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.pekerjaan)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("Kewarganegaraan")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.kewarganegaraan)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
                
                HStack {
                    Text("Berlaku Hingga")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    Text("\(data.berlakuHingga)")
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("MainColor"))
                }
            }
        }.padding(.horizontal, 20)
    }
}

struct DataBox_Previews: PreviewProvider {
    static var previews: some View {
        DataBox(data: .constant(sampleKTP))
    }
}
