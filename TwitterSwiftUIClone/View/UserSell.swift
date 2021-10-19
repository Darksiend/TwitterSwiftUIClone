//
//  UserSell.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 30/09/2021.
//

import SwiftUI
import Kingfisher

struct UserSell: View {
    let user: User
    
    var body: some View {
        HStack(spacing: 12){
            KFImage(URL(string: user.profileimageURL))
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 56, height: 56)
                .cornerRadius(28)
                
            VStack(alignment: .leading, spacing: 4){
                Text(user.username)
                    .font(.system(size: 14, weight: .semibold))
                
                Text(user.fullname)
                    .font(.system(size: 14))
            }
            .foregroundColor(.black)
        }
    }
}

