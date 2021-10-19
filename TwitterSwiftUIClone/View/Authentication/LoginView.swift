//
//  LoginView.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 16/10/2021.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewModel : AuthViewModel
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView {
            ZStack {
                VStack{
                    Image("twitter-logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 220, height: 100)
                        .padding(.top, 88)
                        .padding(.bottom, 32)
                    
                    VStack(spacing: 20){
                        CustomTextField(text: $email, imageName: "envelope", placeholder: Text("Email"))
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
                    
                    HStack{
                        Spacer()
                        Button(action: {}, label: {
                            Text("Forgot password?")
                                .font(.footnote)
                                .bold()
                                .foregroundColor(.white)
                                .padding(.top, 8)
                                .padding(.trailing, 32)
                        })
                    }
                    
                    Button(action: {
                        viewModel.login(withEmail: email, password: password)
                    }, label: {
                        Text("Sign in")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(width: 360, height: 50)
                            .background(Color.white)
                            .clipShape(Capsule())
                            .padding()
                    })
                    
                    Spacer()
                    
                    NavigationLink(destination: RegistrationView().navigationBarHidden(true), label: {
                        HStack{
                            Text("Dont have an account?")
                                .font(.system(size: 14))
                            
                            Text("Sign Up!")
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
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
