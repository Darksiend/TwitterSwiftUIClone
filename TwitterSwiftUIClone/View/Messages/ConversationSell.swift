//
//  ConversationSell.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 02/10/2021.
//

import SwiftUI

struct ConversationSell: View {
    var body: some View {
        VStack {
            HStack(spacing: 12){
                Image("venom-10")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(28)
                    
                VStack(alignment: .leading, spacing: 4){
                    Text("venom")
                        .font(.system(size: 14, weight: .semibold))
                    Text("Longer messages to see something i dont now what")
                        .font(.system(size: 14))
                }
                .padding(.trailing)
            }
        }
    }
}

struct ConversationSell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationSell()
    }
}
