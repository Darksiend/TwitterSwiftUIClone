//
//  AuthViewModel.swift
//  TwitterSwiftUIClone
//
//  Created by Anton Chesnokov on 17/10/2021.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    func login() {
        
    }
    func registerUser(email: String, password: String, username: String, fullname: String, profileimage: UIImage) {
        print("DEBUG!: Email is: \(email)")
        print("DEBUG!: Password is: \(password)")
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG! Error: \(error.localizedDescription)")
                return
            }
            
            print("DEBUG!: Successfully signed up user!")
            
            guard let imageData = profileimage.jpegData(compressionQuality: 0.3) else {return}
            let filename = NSUUID().uuidString
            let storageRef = Storage.storage().reference().child(filename)
            
            storageRef.putData(imageData, metadata: nil) { _, error in
                
                if let error = error {
                    print("DEBUG!: Failed to Upload image!\(error.localizedDescription)")
                    return
                }
                
                storageRef.downloadURL { url, _  in
                    
                    guard let profileImageURL = url?.absoluteString else {return}
                    
                }
                
            }
            
        }
    }
}
