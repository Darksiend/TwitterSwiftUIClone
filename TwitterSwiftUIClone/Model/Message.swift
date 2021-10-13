//
//  Message.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 12/10/2021.
//

import Foundation

struct MockMessage: Identifiable {
    let id: Int
    let imageName: String
    let messageText: String
    let isCurrentUser: Bool
    
}

let MOCK_MESSAGES: [MockMessage] = [
    .init(id: 0, imageName: "spiderman", messageText: "Hey Whats up?", isCurrentUser: false),
    .init(id: 1, imageName: "batman", messageText: "Hey Whats up?", isCurrentUser: true),
    .init(id: 2, imageName: "batman", messageText: "Hey Whats up?", isCurrentUser: true),
    .init(id: 3, imageName: "spiderman", messageText: "Up?", isCurrentUser: false),
    .init(id: 4, imageName: "spiderman", messageText: "Hey Whats up?", isCurrentUser: false),
    .init(id: 5, imageName: "batman", messageText: "Hey Whats up?", isCurrentUser: true),
]
