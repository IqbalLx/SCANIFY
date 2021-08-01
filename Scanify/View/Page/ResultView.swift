//
//  ResultView.swift
//  Scanify
//
//  Created by Iqbal Maulana on 01/08/21.
//

import SwiftUI

struct ResultView: View {
    var image: UIImage?
    @State private var dataKTP: KTPData = emptyKTP
    
    var body: some View {
        VStack {
            Image(uiImage: image!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 320, height: 240, alignment: .center)
                .padding(.top, 50)
                .padding(.bottom, 30)
            
            Button(action: {
                postImage(image: image!) {
                    respData in self.dataKTP = respData
                }
                
            }, label: {
                CustomButton(buttonType: .primary, text: "Scan")
                    .padding(.bottom, 30)
            })
            
            ScrollView {
                DataBox(data: $dataKTP)
            }
            
            Spacer()
        }.navigationBarTitle("Scan", displayMode: .inline)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(image: UIImage(named: "sampleKtp")!)
    }
}
