//
//  ProfileHeaderView.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 12/10/2021.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    
    @Binding var isFollowed : Bool
    
    let viewModel: ProfileViewModel
    
    var body: some View {
        
        VStack{
            
            KFImage(URL(string: viewModel.user.profileImageURL))
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .cornerRadius(120/2)
                .shadow(radius: 10)
            
            Text(viewModel.user.fullname)
                .font(.system(size: 16, weight: .semibold))
                .padding(.top, 8)
            Text("@\(viewModel.user.username)")
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("Billionare by day, dark knight by night")
                .font(.system(size: 14))
                .padding(.top, 8)
            
            HStack(spacing: 40){
                
                VStack{
                    Text("12")
                        .font(.system(size: 16)).bold()
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                VStack{
                    Text("12")
                        .font(.system(size: 16)).bold()
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            .frame(width: 200)
            .padding()
            ProfileActionButtonView(viewModel: viewModel, isFollowed: $isFollowed)
            Spacer()
        }
    }
}

