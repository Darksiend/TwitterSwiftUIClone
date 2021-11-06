//
//  User.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 19/10/2021.
//

import Firebase

struct User: Identifiable  {
    let id: String
    let username: String
    let profileImageURL: String
    let fullname: String
    let email: String
    let isCurrentUser: Bool
    var stats: UserStats
    var isFollowed = false

    
    
    
    
    
    init(dictionary: [String: Any]) {
        self.email = dictionary["email"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.profileImageURL = dictionary["profileImageURL"] as? String ?? ""
        self.id = dictionary["uid"] as? String ?? "Error"
        self.username = dictionary["username"] as? String ?? ""
        self.isCurrentUser = Auth.auth().currentUser?.uid == self.id
        self.stats = UserStats(followers: 0, following: 0)
        
        
        
       
        
    }
}
struct UserStats {
    let followers: Int
    let following: Int
}
