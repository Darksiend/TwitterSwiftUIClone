//
//  CustomTextField.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 16/10/2021.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    let imageName: String
    let placeholder: Text
    var body: some View {
        ZStack(alignment: .leading){
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.87)))
                    .padding(.leading, 40)
            }
            
            HStack(spacing: 14) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20)
                
                TextField("", text: $text)
            }
            
            
        }
        
    }
}

