//
//  TweetSell.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 28/09/2021.
//

import SwiftUI
import Kingfisher

struct TweetCell: View {
    let tweet: Tweet
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top, spacing: 12){
                KFImage(URL(string: tweet.profileImageURL))
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(56/2)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 4){
                    HStack {
                        Text(tweet.fullname)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.black)
                        Text("@\(tweet.username)")
                            .foregroundColor(.gray)
                        Text("2w")
                            .foregroundColor(.gray)
                    }
                    Text(tweet.caption)
                        .foregroundColor(.black)
                }

            }.padding(.bottom)
                .padding(.trailing)
            TweetActionsView(tweet: tweet)
            Divider()
        }
        .padding(.leading, -16)
    }
}

