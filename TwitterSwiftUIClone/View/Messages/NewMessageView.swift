//
//  NewMessageView.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 12/10/2021.
//

import SwiftUI

struct NewMessageView: View {
    @State var searchText = ""
    @Binding var show: Bool
    @Binding var startChat: Bool
    @ObservedObject var viewModel = SearchViewModel()
    var body: some View {
        ScrollView{
            SearchBar(text: $searchText)
            VStack(alignment: .leading) {
                ForEach(viewModel.users) { user in
                    HStack {Spacer()}
                    Button(action: {
                        self.show.toggle()
                        self.startChat.toggle()
                    }, label: { UserSell(user: user)})
                    
                }
            }.padding(.leading)
        }
    }
}

