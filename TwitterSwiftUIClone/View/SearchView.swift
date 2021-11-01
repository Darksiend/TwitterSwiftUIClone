//
//  SearchView.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 28/09/2021.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @ObservedObject var viewModel = SearchViewModel()
    var body: some View {
        ScrollView{
            SearchBar(text: $searchText)
            VStack(alignment: .leading) {
                ForEach(viewModel.users) { user in
                    HStack {Spacer()}
                    
                    NavigationLink(destination: LazyView(UserProfileView( user: user)), label: {
                        UserSell(user: user)
                    })
                    
                        
                    
                }
            }.padding(.leading)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
