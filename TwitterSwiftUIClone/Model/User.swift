//
//  User.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 19/10/2021.
//

import Foundation

struct User: Identifiable  {
    let id: String
    let username: String
    let profileimageURL: String
    let fullname: String
    let email: String
    
    init(dictionary: [String: Any]) {
        self.id = dictionary["uid"] as? String ?? "Error"
        self.username = dictionary["username"] as? String ?? "Error"
        self.profileimageURL = dictionary["profileimageURL"] as? String ?? "Error"
        self.email = dictionary["email"] as? String ?? "Error"
        self.fullname = dictionary["fullname"] as? String ?? "Error"
        
    }
    
    
}
