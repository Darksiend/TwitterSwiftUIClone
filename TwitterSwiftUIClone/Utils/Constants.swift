//
//  Constants.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 19/10/2021.
//

import Firebase

let COLLECTION_USERS = Firestore.firestore().collection("users")
let COLLECTION_FOLLOWERS = Firestore.firestore().collection("followers")
let COLLECTION_FOLLOWING = Firestore.firestore().collection("following")
