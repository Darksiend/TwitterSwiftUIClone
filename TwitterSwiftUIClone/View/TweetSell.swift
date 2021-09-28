//
//  TweetSell.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 28/09/2021.
//

import SwiftUI

struct TweetSell: View {
    var body: some View {
        VStack{
            HStack(alignment: .top){
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(56/2)
                    .padding(.leading)
                VStack(alignment: .leading){
                    HStack {
                        Text("Bruce Wayne")
                            .font(.system(size: 14, weight: .semibold))
                        Text("@batman")
                        Text("1 h ago")
                    }
                    Text("Its Not who iam, but what i do that Iam")
                }
            }
        }
    }
}

struct TweetSell_Previews: PreviewProvider {
    static var previews: some View {
        TweetSell()
    }
}
