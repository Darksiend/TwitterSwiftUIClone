//
//  SearchView.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 28/09/2021.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        ScrollView{
            SearchBar(text: $searchText)
            VStack(alignment: .leading) {
                ForEach(0..<1) { _ in
                    HStack {Spacer()}
                    
                    NavigationLink(destination: UserProfileView(), label: {
                        UserSell()
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
