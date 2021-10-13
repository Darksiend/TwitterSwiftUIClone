//
//  ConversationSell.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 02/10/2021.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack{
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
                    Text("Longer message text to see what happenswith i do is")
                        .font(.system(size: 15))
                        .lineLimit(2)
                    
                    
                }
                .foregroundColor(.black)
                .padding(.trailing)
                Spacer()
            }
            Divider()
        }
    }
}

struct ConversationSell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
