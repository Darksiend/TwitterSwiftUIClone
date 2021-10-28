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
    
    @ObservedObject var viewModel : ProfileViewModel
    
    init(user: User){
        
        self.user = user
        
        self.viewModel = ProfileViewModel(user: user)
        
    }
    var body: some View {
        
        ScrollView{
            
            VStack{
                
                ProfileHeaderView(isFollowed: $viewModel.isFollowed, viewModel: viewModel)
                    .padding()
                
                FilterButtonView(selectedOption: $selectedFilter)
                    .padding()
                
                ForEach(0..<9) { tweet in
                    
//                    TweetCell()
//                        .padding()
                }
            }
            
            .navigationTitle("Batman")
        }
    }
}

