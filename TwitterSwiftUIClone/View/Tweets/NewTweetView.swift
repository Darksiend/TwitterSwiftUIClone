//
//  NewTweetView.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 13/10/2021.
//

import SwiftUI

struct NewTweetView: View {
    @Binding var isPresented: Bool
    var body: some View {
        
        NavigationView{
            VStack {
                HStack{
                    Image("batman")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width: 64, height: 64)
                        .cornerRadius(32)
                    
                    Text("Whats Happend")
                        .foregroundColor(.gray)
                    
                    Spacer()
                }
                
                .padding()
                .navigationBarItems(leading:
                                        Button(action: {isPresented.toggle()}, label: {Text("Cancel")
                        .foregroundColor(.blue)
                }),
                                    trailing: Button(action: {}, label: {Text("Tweet")
                    
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

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView(isPresented: .constant(true))
    }
}
