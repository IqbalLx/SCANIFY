//
//  CustomButton.swift
//  Scanify
//
//  Created by Iqbal Maulana on 01/08/21.
//

import SwiftUI

struct CustomButton: View {
    var buttonType: ButtonType
    var text: String
    var cornerRadius: CGFloat = 10
    
    var body: some View {
        switch buttonType {
            case .primary:
                    ZStack {
                        Rectangle()
                            .frame(height: 50)
                            .cornerRadius(cornerRadius)
                            .foregroundColor(Color("MainColor"))
                            
                        
                        Text(text)
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                    }.padding(.horizontal)
            
            case .secondary:
                    ZStack {
                        Rectangle()
                            .frame(height: 50)
                            .foregroundColor(Color(.clear))
                            .overlay(
                                    RoundedRectangle(cornerRadius: cornerRadius)
                                        .stroke(Color("MainColor"), lineWidth: 2)
                            )
                        
                        Text(text)
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .fontWeight(.medium)
                            .foregroundColor(Color("MainColor"))
                    }.padding(.horizontal)
        }
    }
}

enum ButtonType {
    case primary
    case secondary
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(buttonType: .primary, text: "Add Photo")
        CustomButton(buttonType: .secondary, text: "Add Photo")
    }
}
