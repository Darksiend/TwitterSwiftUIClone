//
//  ConversationsView.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 02/10/2021.
//

import SwiftUI

struct ConversationsView: View {
    @State var isShowingNewMessageView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                VStack{
                    ForEach(0..<10) { _ in
                        NavigationLink(destination: Text("Chat View"), label: {
                            ConversationCell()
                        })
                                            }
                }
                .padding()
            }
            
            Button(action: { self .isShowingNewMessageView.toggle() }, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 32, height: 32)
                    .padding()
            })
                .background(Color(.systemBlue))
                .foregroundColor(.white)
                .clipShape(Circle())
                .padding()
                .sheet(isPresented: $isShowingNewMessageView,  content: {
                    SearchView()
                })
                
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
