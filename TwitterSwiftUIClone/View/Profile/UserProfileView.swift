//
//  UserProfileView.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 12/10/2021.
//

import SwiftUI

struct UserProfileView: View {
    @State var selectedFilter: TweetFilterOptions = .tweets
    let user: User
    var body: some View {
        ScrollView{
            VStack{
                ProfileHeaderView(user: user)
                    .padding()
                FilterButtonView(selectedOption: $selectedFilter)
                    .padding()
                
                ForEach(0..<9) { tweet in
                    TweetSell()
                        .padding()
                }
            }
            
            .navigationTitle("Batman")
        }
    }
}

