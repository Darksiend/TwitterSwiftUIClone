//
//  ContentView.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 28/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            
            TabView{
                FeedView()
                    .tabItem{
                        Image(systemName: "house")
                        Text("Home")
                    }
                SearchView()
                    .tabItem{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                ConversationsView()
                    .tabItem{
                        Image(systemName: "envelope")
                        Text("Messages")
                    }
                
            }
            .navigationBarTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
