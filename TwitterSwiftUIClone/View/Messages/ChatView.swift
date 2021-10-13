//
//  ChatView.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 12/10/2021.
//

import SwiftUI

struct ChatView: View {
    @State var messageText: String = ""
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    ForEach(MOCK_MESSAGES){ message in
                        MessageView(message: message)
                        
                    }
                }
            }.padding(.top)
            MesssageInputView(messageText: $messageText)
                .padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

