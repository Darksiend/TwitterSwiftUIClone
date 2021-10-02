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
                ForEach(0..<10) { _ in
                    HStack {Spacer()}
                        UserSell()
                    
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
