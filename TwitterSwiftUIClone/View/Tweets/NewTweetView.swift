//
//  NewTweetView.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 13/10/2021.
//

import SwiftUI
import Kingfisher

struct NewTweetView: View {
    @Binding var isPresented: Bool
    @State var captionText: String = ""
    @ObservedObject var viewModel = UploadTweetViewModel()
    
    var body: some View {
        
        NavigationView{
            VStack {
                HStack(alignment: .top){
                    if let user = AuthViewModel.shared.user {
                        KFImage(URL(string: user.profileImageURL))
                            .resizable()
                            .scaledToFill()
                            .clipped()
                            .frame(width: 64, height: 64)
                            .cornerRadius(32)
                    }
                    
                    
                    TextArea("Whats Hapening?", text: $captionText)
                    
                    Spacer()
                }
                
                .padding()
                .navigationBarItems(leading:
                                        Button(action: {isPresented.toggle()}, label: {Text("Cancel")
                        .foregroundColor(.blue)
                }),
                                    trailing: Button(action: {
                    viewModel.uploadTweet(caption: captionText)
                }, label: {Text("Tweet")
                    
                        .padding(.horizontal)
                        .padding(.vertical , 8)
                        .background(Color.blue)
                        
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                })
            )
                Spacer()
            }
        
        }
    }
}



