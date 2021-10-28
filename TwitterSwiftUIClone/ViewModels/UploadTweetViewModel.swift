//
//  UploadTweetViewModel.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 26/10/2021.
//

import SwiftUI
import Firebase

class UploadTweetViewModel: ObservableObject {
    
    @Binding var isPresented: Bool
    
    init(isPresented: Binding<Bool>){
        self._isPresented = isPresented
    }

    func uploadTweet(caption: String){        
        guard let user = AuthViewModel.shared.user else { return }
        
        let docRef = COLLECTION_TWEETS.document()
        
        let data : [String: Any ] = ["uid" : user.id,
                                     "caption" : caption,
                                     "fullname" : user.fullname,
                                     "timestamp" : Timestamp(date: Date()),
                                     "username" : user.username,
                                     "profileImage" : user.profileImageURL,
                                     "likes" : 0,
                                     "id" : docRef.documentID]
        
        docRef.setData(data) { _ in
            print("DEBUG!: Uploaded tweet...")
            self.isPresented = false
        }
        
    }
    
    
}
