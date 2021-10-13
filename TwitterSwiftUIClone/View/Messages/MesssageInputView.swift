//
//  MesssageInputView.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 12/10/2021.
//

import SwiftUI

struct MesssageInputView: View {
    @Binding var messageText: String
    
    var body: some View {
        HStack{
            TextField("Message...", text: $messageText)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minHeight: 30)
            
            Button(action: {}, label: {
                Text("Send")
            })
        }
    }
}

struct MesssageInputView_Previews: PreviewProvider {
    static var previews: some View {
        MesssageInputView(messageText: .constant("Message"))
    }
}
