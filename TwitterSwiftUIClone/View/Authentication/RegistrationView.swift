//
//  RegistrationView.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 16/10/2021.
//

import SwiftUI

struct RegistrationView: View {
    @State var email = ""
    @State var password = ""
    @State var fullname = ""
    @State var username = ""
    @State var showImagePicker = false
    @State var selectedUIImage: UIImage?
    @State var image: Image?
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    
    func loadImage() {
        guard let selectedImage = selectedUIImage else {
            return
        }
        
        image = Image(uiImage: selectedImage)

    }
    
    var body: some View {
        ZStack {
            VStack{
                Button(action: {showImagePicker.toggle()}, label: {
                    ZStack {
                        if let image = image {
                            image
                                .resizable()

                                .scaledToFill()
                                .frame(width: 140, height: 140)
                                .clipped()
                                .cornerRadius(70)
                                .padding(.top, 88)
                                .padding(.bottom, 16)
                            
                        } else {
                            Image("plus_photo")
                                .resizable()
                                .renderingMode(.template)
                                .scaledToFill()
                                .frame(width: 140, height: 140)
                                .padding(.top, 88)
                                .padding(.bottom, 16)
                            .foregroundColor(.white)
                        }
                        
                    }
                })
                    .sheet(isPresented: $showImagePicker,onDismiss: loadImage, content: {
                        
                        ImagePicker(image: $selectedUIImage)
                    })
                
                VStack(spacing: 20){
                    CustomTextField(text: $fullname, imageName: "person", placeholder: Text("Full Name"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        
                        .foregroundColor(.white)
                    CustomTextField(text: $email, imageName: "envelope", placeholder: Text("Email"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        
                        .foregroundColor(.white)

                    CustomTextField(text: $username, imageName: "person", placeholder: Text("Username"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        
                        .foregroundColor(.white)

                    
                    CustomSecureField(text: $password, imageName: "lock", placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                       
                        .foregroundColor(.white)
                    
                    
                }
                .padding(.horizontal)
                
                
                
                Button(action: {}, label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: 360, height: 50)
                        .background(Color.white)
                        .clipShape(Capsule())
                        .padding()
                })
                
                Spacer()
                
                Button(action: {mode.wrappedValue.dismiss()}, label: {
                    HStack{
                        Text("Already have an account?")
                            .font(.system(size: 14))
                        
                        Text("Sign In!")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .foregroundColor(.white)
                    .padding(.bottom, 40)
                    
                })
                
                
            }
        }
        .background(Color(#colorLiteral(red: 0.1170291379, green: 0.6328371167, blue: 0.951066196, alpha: 1)))
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
