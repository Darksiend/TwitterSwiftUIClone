//
//  Tweet.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 26/10/2021.
//

import Firebase

struct Tweet: Identifiable  {
    let id: String
    let username: String
    let profileImageURL: String
    let fullname: String
    let caption: String
    let likes: Int
    let uid: String
    let timestamp: Timestamp

    init(dictionary: [String: Any]) {
        self.caption = dictionary["caption"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.profileImageURL = dictionary["profileImage"] as? String ?? ""
        self.id = dictionary["id"] as? String ?? "Error"
        self.username = dictionary["username"] as? String ?? ""
        self.likes = dictionary["likes"] as? Int ?? 0
        self.uid = dictionary["uid"] as? String ?? ""
        self.timestamp = dictionary["timestamp"] as? Timestamp ?? Timestamp(date: Date())

        }
}
