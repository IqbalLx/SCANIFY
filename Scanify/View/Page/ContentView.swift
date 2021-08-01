//
//  ContentView.swift
//  Scanify
//
//  Created by Iqbal Maulana on 01/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @State private var selectedImage: UIImage?
    @State private var isImagePickerDisplay = false
    @State private var isImageAvailable = false
    
    init() {
        setupNavigationBar()
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Button(action: {
                    self.sourceType = .camera
                    self.isImagePickerDisplay.toggle()
                    
                    self.isImageAvailable = selectedImage != nil
                }, label: {
                    CustomButton(buttonType: .primary, text: "Open Camera")
                })
                
                Button(action: {
                    self.sourceType = .photoLibrary
                    self.isImagePickerDisplay.toggle()
                    
                    self.isImageAvailable = selectedImage != nil
                }, label: {
                    CustomButton(buttonType: .secondary, text: "Open From Library")
                })
                
                NavigationLink(
                    destination: ResultView(image: selectedImage),
                    isActive: $isImageAvailable,
                    label: {})
                
            }
            .navigationTitle("Extract KTP")
            .sheet(isPresented: self.$isImagePickerDisplay) {
                            ImagePickerView(selectedImage: self.$selectedImage, sourceType: self.sourceType)
                        }
        }.navigationBarColor(UIColor(named: "MainColor"))
    }
}

extension ContentView {
    func setupNavigationBar() {
        UINavigationBar.appearance().backgroundColor = UIColor(named: "MainColor")
    }
}

struct NavigationBarModifier: ViewModifier {
        
    var backgroundColor: UIColor?
    
    init( backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = .clear
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .white

    }
    
    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}

extension View {
 
    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
